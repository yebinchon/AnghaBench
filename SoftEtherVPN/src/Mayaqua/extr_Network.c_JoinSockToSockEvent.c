
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Type; int * BulkRecvTube; int * RecvTube; } ;
typedef int SOCK_EVENT ;
typedef TYPE_1__ SOCK ;


 scalar_t__ SOCK_INPROC ;
 int SetTubeSockEvent (int *,int *) ;
 int UnixJoinSockToSockEvent (TYPE_1__*,int *) ;
 int Win32JoinSockToSockEvent (TYPE_1__*,int *) ;

void JoinSockToSockEvent(SOCK *sock, SOCK_EVENT *event)
{

 if (sock == ((void*)0) || event == ((void*)0))
 {
  return;
 }

 if (sock->Type == SOCK_INPROC)
 {

  SetTubeSockEvent(sock->RecvTube, event);
  return;
 }

 if (sock->BulkRecvTube != ((void*)0))
 {

  SetTubeSockEvent(sock->BulkRecvTube, event);
 }




 UnixJoinSockToSockEvent(sock, event);

}
