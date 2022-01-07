
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;


 int bind (int,struct sockaddr*,int) ;
 int sockaddr2ebcdic (struct sockaddr_storage*,struct sockaddr*,int) ;

int
Curl_os400_bind(int sd, struct sockaddr * localaddr, int addrlen)
{
  int i;
  struct sockaddr_storage laddr;

  i = sockaddr2ebcdic(&laddr, localaddr, addrlen);

  if(i < 0)
    return -1;

  return bind(sd, (struct sockaddr *) &laddr, i);
}
