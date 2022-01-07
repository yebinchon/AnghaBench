
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int EAGAIN ;
 int EINTR ;
 int ETIMEDOUT ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int MSG_NOSIGNAL ;
 int errno ;
 int pError (char*,int,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ send (int,char*,size_t,int ) ;
 int strerror (int ) ;
 int taosSetNonblocking (int,int) ;

int taosNonblockwrite(int fd, char *ptr, int nbytes) {
  taosSetNonblocking(fd, 1);

  int nleft, nwritten, nready;
  fd_set fset;
  struct timeval tv;

  nleft = nbytes;
  while (nleft > 0) {
    tv.tv_sec = 30;
    tv.tv_usec = 0;
    FD_ZERO(&fset);
    FD_SET(fd, &fset);
    if ((nready = select(fd + 1, ((void*)0), &fset, ((void*)0), &tv)) == 0) {
      errno = ETIMEDOUT;
      pError("fd %d timeout, no enough space to write", fd);
      break;

    } else if (nready < 0) {
      if (errno == EINTR) continue;

      pError("select error, %d (%s)", errno, strerror(errno));
      return -1;
    }

    nwritten = (int)send(fd, ptr, (size_t)nleft, MSG_NOSIGNAL);
    if (nwritten <= 0) {
      if (errno == EAGAIN || errno == EINTR) continue;

      pError("write error, %d (%s)", errno, strerror(errno));
      return -1;
    }

    nleft -= nwritten;
    ptr += nwritten;
  }

  taosSetNonblocking(fd, 0);

  return (nbytes - nleft);
}
