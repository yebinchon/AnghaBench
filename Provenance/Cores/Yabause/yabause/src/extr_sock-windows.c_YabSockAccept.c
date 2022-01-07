
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YabSock ;


 int accept (int ,int *,int *) ;

YabSock YabSockAccept(YabSock sock)
{
   return accept(sock,((void*)0),((void*)0));
}
