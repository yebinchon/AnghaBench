
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Sockets {int count; int * sockets; } ;
typedef int fd_set ;
typedef int CURLM ;


 scalar_t__ FD_ISSET (int ,int *) ;
 int notifyCurl (int *,int ,int,char const*) ;

__attribute__((used)) static void checkFdSet(CURLM *curl, struct Sockets *sockets, fd_set *fdset,
                       int evBitmask, const char *name)
{
  int i;
  for(i = 0; i < sockets->count; ++i) {
    if(FD_ISSET(sockets->sockets[i], fdset)) {
      notifyCurl(curl, sockets->sockets[i], evBitmask, name);
    }
  }
}
