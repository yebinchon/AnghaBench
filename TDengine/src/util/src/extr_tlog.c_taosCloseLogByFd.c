
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taosUnLockFile (int) ;
 int tclose (int) ;

void taosCloseLogByFd(int fd) {
  if (fd >= 0) {
    taosUnLockFile(fd);
    tclose(fd);
  }
}
