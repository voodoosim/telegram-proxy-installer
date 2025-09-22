#!/bin/bash

# MTProto 설치 스크립트 수정 및 실행
# CRLF 문제와 log 함수 오류 해결

echo "====== MTProto 스크립트 수정 및 설치 ======"

# 1. 기존 스크립트 다운로드
echo "[INFO] 스크립트 다운로드 중..."
wget -q https://raw.githubusercontent.com/voodoosim/telegram-proxy-installer/main/mtproto_4proxy_installer.sh

# 2. CRLF 문제 해결
echo "[INFO] CRLF 줄바꿈 문제 해결 중..."
sed -i 's/\r$//' mtproto_4proxy_installer.sh

# 3. log 함수 오류 수정
echo "[INFO] log 함수 오류 수정 중..."
sed -i 's/\blog\b/log_info/g' mtproto_4proxy_installer.sh

# 4. 실행 권한 부여
chmod +x mtproto_4proxy_installer.sh

# 5. 스크립트 실행
echo "[INFO] MTProto 프록시 설치 시작..."
echo "======================================"
./mtproto_4proxy_installer.sh