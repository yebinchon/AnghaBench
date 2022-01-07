
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YabSock ;


 int send (int ,void const*,int,int) ;

int YabSockSend(YabSock sock, const void *buf, int len, int flags)
{
   return send(sock, buf, len, flags);
}
