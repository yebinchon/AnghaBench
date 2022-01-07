
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int COPY_SIZE ;
 int errno ;
 int pError (char*,int,int,scalar_t__,scalar_t__,int ) ;
 int strerror (int ) ;
 int taosReadMsg (int,char*,int) ;
 int taosWriteMsg (int,char*,int) ;

int taosCopyFds(int sfd, int dfd, int64_t len) {
  int64_t leftLen;
  int readLen, writeLen;
  char temp[COPY_SIZE];

  leftLen = len;

  while (leftLen > 0) {
    if (leftLen < COPY_SIZE)
      readLen = (int)leftLen;
    else
      readLen = COPY_SIZE;

    int retLen = taosReadMsg(sfd, temp, (int)readLen);
    if (readLen != retLen) {
      pError("read error, readLen:%d retLen:%d len:%ld leftLen:%ld, reason:%s", readLen, retLen, len, leftLen,
             strerror(errno));
      return -1;
    }

    writeLen = taosWriteMsg(dfd, temp, readLen);

    if (readLen != writeLen) {
      pError("copy error, readLen:%d writeLen:%d len:%ld leftLen:%ld, reason:%s", readLen, writeLen, len, leftLen,
             strerror(errno));
      return -1;
    }

    leftLen -= readLen;
  }

  return 0;
}
