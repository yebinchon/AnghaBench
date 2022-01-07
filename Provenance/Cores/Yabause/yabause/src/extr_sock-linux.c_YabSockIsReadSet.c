
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YabSock ;


 int FD_ISSET (int ,int *) ;
 int read_fds ;

int YabSockIsReadSet(YabSock sock)
{
   return FD_ISSET(sock, &read_fds);
}
