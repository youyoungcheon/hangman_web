# 베이스 이미지 설정
FROM python:3.10-slim

# 작업 디렉터리 설정
WORKDIR /app

# 종속성 파일 복사 및 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 파일 복사
COPY . .

# 기본 실행 명령어 설정
CMD ["python", "app.py"]
