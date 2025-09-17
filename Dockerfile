FROM ubuntu:24.04

RUN apt-get update && apt-get install -y python3
CMD ["python3", "-c", "def isHappy(n):\n\
  sadlist=[]\n\
  while True:\n\

    sadlist.append(n)\n\
    k=0\n\
    while n!=0:\n\
      k+=(n%10)**2\n\
      n=n//10\n\
    n=k\n\
    if n==1:\n\
      return True\n\
    if n in sadlist:\n\
      return False\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]

