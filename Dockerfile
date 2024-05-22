FROM python:3.9

RUN mkdir /workspace/

COPY ./main.py /main.py

COPY ./main.py /workspace/main.py

RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]' 

WORKDIR /workspace

ENV STUDENT_ID = 2023310054

ENTRYPOINT ["uvicorn"]
CMD ["--host=0.0.0.0", "--port=80", "main:app"]
