
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCK_NB ;
 int LOCK_UN ;
 int flock (int,int) ;
 int taosLogFileNum ;

void taosUnLockFile(int fd) {
  if (fd < 0) return;

  if (taosLogFileNum > 1) {
    flock(fd, LOCK_UN | LOCK_NB);
  }
}
