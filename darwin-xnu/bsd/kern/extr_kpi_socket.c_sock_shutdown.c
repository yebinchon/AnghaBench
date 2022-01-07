
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * socket_t ;
typedef int errno_t ;


 int EINVAL ;
 int soshutdown (int *,int) ;

errno_t
sock_shutdown(socket_t sock, int how)
{
 if (sock == ((void*)0))
  return (EINVAL);

 return (soshutdown(sock, how));
}
