
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int probes ;
typedef int nodelay ;
typedef int interval ;
typedef int alivetime ;
typedef int alive ;


 int IPPROTO_TCP ;
 int SOL_SOCKET ;
 int SOL_TCP ;
 int SO_KEEPALIVE ;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int TCP_NODELAY ;
 int close (int) ;
 int errno ;
 int pError (char*,int,int ,int ) ;
 int strerror (int ) ;
 scalar_t__ taosSetSockOpt (int,int ,int ,void*,int) ;

int taosKeepTcpAlive(int sockFd) {
  int alive = 1;
  if (taosSetSockOpt(sockFd, SOL_SOCKET, SO_KEEPALIVE, (void *)&alive, sizeof(alive)) < 0) {
    pError("fd:%d setsockopt SO_KEEPALIVE failed: %d (%s)", sockFd, errno, strerror(errno));
    close(sockFd);
    return -1;
  }

  int probes = 3;
  if (taosSetSockOpt(sockFd, SOL_TCP, TCP_KEEPCNT, (void *)&probes, sizeof(probes)) < 0) {
    pError("fd:%d setsockopt SO_KEEPCNT failed: %d (%s)", sockFd, errno, strerror(errno));
    close(sockFd);
    return -1;
  }

  int alivetime = 10;
  if (taosSetSockOpt(sockFd, SOL_TCP, TCP_KEEPIDLE, (void *)&alivetime, sizeof(alivetime)) < 0) {
    pError("fd:%d setsockopt SO_KEEPIDLE failed: %d (%s)", sockFd, errno, strerror(errno));
    close(sockFd);
    return -1;
  }

  int interval = 3;
  if (taosSetSockOpt(sockFd, SOL_TCP, TCP_KEEPINTVL, (void *)&interval, sizeof(interval)) < 0) {
    pError("fd:%d setsockopt SO_KEEPINTVL failed: %d (%s)", sockFd, errno, strerror(errno));
    close(sockFd);
    return -1;
  }

  int nodelay = 1;
  if (taosSetSockOpt(sockFd, IPPROTO_TCP, TCP_NODELAY, (void *)&nodelay, sizeof(nodelay)) < 0) {
    pError("fd:%d setsockopt TCP_NODELAY failed %d (%s)", sockFd, errno, strerror(errno));
    close(sockFd);
    return -1;
  }

  return 0;
}
