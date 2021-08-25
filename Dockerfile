FROM python:3.8-slim-buster

WORKDIR /code
COPY requirements.txt /code
RUN pip install -r requirements.txt
COPY . /code
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
