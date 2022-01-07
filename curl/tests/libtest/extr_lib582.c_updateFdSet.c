
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Sockets {int count; scalar_t__* sockets; } ;
typedef int fd_set ;
typedef scalar_t__ curl_socket_t ;


 int FD_SET (scalar_t__,int *) ;

__attribute__((used)) static void updateFdSet(struct Sockets* sockets, fd_set* fdset,
                        curl_socket_t *maxFd)
{
  int i;
  for(i = 0; i < sockets->count; ++i) {
    FD_SET(sockets->sockets[i], fdset);
    if(*maxFd < sockets->sockets[i] + 1) {
      *maxFd = sockets->sockets[i] + 1;
    }
  }
}
