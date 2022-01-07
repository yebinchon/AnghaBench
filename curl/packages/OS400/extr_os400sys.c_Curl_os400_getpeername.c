
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int laddr ;


 int getpeername (int,struct sockaddr*,int*) ;
 int sockaddr2ascii (struct sockaddr*,int,struct sockaddr_storage*,int) ;

int
Curl_os400_getpeername(int sd, struct sockaddr *addr, int *addrlen)
{
  struct sockaddr_storage laddr;
  int laddrlen = sizeof(laddr);
  int retcode = getpeername(sd, (struct sockaddr *) &laddr, &laddrlen);

  if(!retcode) {
    laddrlen = sockaddr2ascii(addr, *addrlen, &laddr, laddrlen);
    if(laddrlen < 0)
      return laddrlen;
    *addrlen = laddrlen;
  }

  return retcode;
}
