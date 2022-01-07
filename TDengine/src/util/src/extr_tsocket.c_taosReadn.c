
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int EINTR ;
 int ETIMEDOUT ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int errno ;
 int pError (char*,int,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int strerror (int ) ;
 scalar_t__ taosReadSocket (int,char*,size_t) ;

int taosReadn(int fd, char *ptr, int nbytes) {
  int nread, nready, nleft = nbytes;

  fd_set fset;
  struct timeval tv;

  while (nleft > 0) {
    tv.tv_sec = 30;
    tv.tv_usec = 0;
    FD_ZERO(&fset);
    FD_SET(fd, &fset);
    if ((nready = select(fd + 1, ((void*)0), &fset, ((void*)0), &tv)) == 0) {
      errno = ETIMEDOUT;
      pError("fd %d timeout\n", fd);
      break;
    } else if (nready < 0) {
      if (errno == EINTR) continue;
      pError("select error, %d (%s)", errno, strerror(errno));
      return -1;
    }

    if ((nread = (int)taosReadSocket(fd, ptr, (size_t)nleft)) < 0) {
      if (errno == EINTR) continue;
      pError("read error, %d (%s)", errno, strerror(errno));
      return -1;

    } else if (nread == 0) {
      pError("fd %d EOF", fd);
      break;
    }

    nleft -= nread;
    ptr += nread;
  }

  return (nbytes - nleft);
}
