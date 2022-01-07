
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;
 int SOL_TCP ;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int setsockopt (int,int,int,void*,int) ;

int taosSetSockOpt(int socketfd, int level, int optname, void *optval, int optlen) {
  if (level == SOL_SOCKET && optname == TCP_KEEPCNT) {
    return 0;
  }

  if (level == SOL_TCP && optname == TCP_KEEPIDLE) {
    return 0;
  }

  if (level == SOL_TCP && optname == TCP_KEEPINTVL) {
    return 0;
  }

  return setsockopt(socketfd, level, optname, optval, optlen);
}
