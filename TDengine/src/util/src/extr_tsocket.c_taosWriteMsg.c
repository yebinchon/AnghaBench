
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ taosWriteSocket (int,char*,size_t) ;

int taosWriteMsg(int fd, void *buf, int nbytes) {
  int nleft, nwritten;
  char *ptr = (char *)buf;

  nleft = nbytes;

  while (nleft > 0) {
    nwritten = (int)taosWriteSocket(fd, (char *)ptr, (size_t)nleft);
    if (nwritten <= 0) {
      if (errno == EINTR)
        continue;
      else
        return -1;
    } else {
      nleft -= nwritten;
      ptr += nwritten;
    }
  }

  return (nbytes - nleft);
}
