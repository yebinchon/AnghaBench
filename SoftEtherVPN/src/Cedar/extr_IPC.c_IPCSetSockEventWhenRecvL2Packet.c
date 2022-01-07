
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Sock; } ;
typedef int SOCK_EVENT ;
typedef TYPE_1__ IPC ;


 int JoinSockToSockEvent (int ,int *) ;

void IPCSetSockEventWhenRecvL2Packet(IPC *ipc, SOCK_EVENT *e)
{

 if (ipc == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 JoinSockToSockEvent(ipc->Sock, e);
}
