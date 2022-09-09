FROM python:3.8
COPY mathbot /mathbot
COPY requirements.txt /mathbot/requirements.txt
WORKDIR /mathbot
RUN pip install -Ur requirements.txt
ENTRYPOINT ["python3", "entrypoint.py", "parameters.json"]