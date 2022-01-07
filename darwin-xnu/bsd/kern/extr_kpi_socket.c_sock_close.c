
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * socket_t ;


 int soclose (int *) ;

void
sock_close(socket_t sock)
{
 if (sock == ((void*)0))
  return;

 soclose(sock);
}
