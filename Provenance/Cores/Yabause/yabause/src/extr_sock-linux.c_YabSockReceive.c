
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YabSock ;


 int recv (int ,void*,int,int) ;

int YabSockReceive(YabSock sock, void *buf, int len, int flags)
{
   return recv(sock, buf, len, flags);
}
