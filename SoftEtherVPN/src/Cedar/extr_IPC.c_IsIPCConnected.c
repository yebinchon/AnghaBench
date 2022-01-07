
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Sock; } ;
struct TYPE_4__ {int SendTube; int RecvTube; } ;
typedef TYPE_2__ IPC ;


 int IsTubeConnected (int ) ;

bool IsIPCConnected(IPC *ipc)
{

 if (ipc == ((void*)0))
 {
  return 0;
 }

 if (IsTubeConnected(ipc->Sock->RecvTube) == 0 || IsTubeConnected(ipc->Sock->SendTube) == 0)
 {
  return 0;
 }

 return 1;
}
