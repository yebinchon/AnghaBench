
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Sockets {int max_count; int count; scalar_t__* sockets; } ;
typedef scalar_t__ curl_socket_t ;


 int fprintf (int ,char*,int,char const*) ;
 scalar_t__* malloc (int) ;
 scalar_t__* realloc (scalar_t__*,int) ;
 int removeFd (struct Sockets*,scalar_t__,int ) ;
 int stderr ;

__attribute__((used)) static void addFd(struct Sockets* sockets, curl_socket_t fd, const char *what)
{




  fprintf(stderr, "Add socket fd %d for %s\n", (int) fd, what);
  removeFd(sockets, fd, 0);



  if(!sockets->sockets) {
    sockets->sockets = malloc(sizeof(curl_socket_t) * 20U);
    if(!sockets->sockets)
      return;
    sockets->max_count = 20;
  }
  else if(sockets->count + 1 > sockets->max_count) {
    curl_socket_t *oldptr = sockets->sockets;
    sockets->sockets = realloc(oldptr, sizeof(curl_socket_t) *
                               (sockets->max_count + 20));
    if(!sockets->sockets) {

      sockets->sockets = oldptr;
      return;
    }
    sockets->max_count += 20;
  }



  sockets->sockets[sockets->count] = fd;
  ++sockets->count;
}
