
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Sockets {int count; scalar_t__* sockets; } ;
typedef scalar_t__ curl_socket_t ;


 int fprintf (int ,char*,int) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int stderr ;

__attribute__((used)) static void removeFd(struct Sockets* sockets, curl_socket_t fd, int mention)
{
  int i;

  if(mention)
    fprintf(stderr, "Remove socket fd %d\n", (int) fd);

  for(i = 0; i < sockets->count; ++i) {
    if(sockets->sockets[i] == fd) {
      if(i < sockets->count - 1)
        memmove(&sockets->sockets[i], &sockets->sockets[i + 1],
              sizeof(curl_socket_t) * (sockets->count - (i + 1)));
      --sockets->count;
    }
  }
}
