
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int setsockopt (int,int,int,void*,int ) ;

int taosSetSockOpt(int socketfd, int level, int optname, void *optval, int optlen) {
  return setsockopt(socketfd, level, optname, optval, (socklen_t)optlen);
}
