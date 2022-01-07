
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int Sock; } ;
typedef TYPE_1__ RPC ;


 int DeleteLock (int ) ;
 int Disconnect (int ) ;
 int Free (TYPE_1__*) ;
 int ReleaseSock (int ) ;

void RpcFreeEx(RPC *rpc, bool no_disconnect)
{

 if (rpc == ((void*)0))
 {
  return;
 }

 if (no_disconnect == 0)
 {
  Disconnect(rpc->Sock);
 }

 ReleaseSock(rpc->Sock);

 DeleteLock(rpc->Lock);

 Free(rpc);
}
