
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Rpc; } ;
typedef TYPE_1__ REMOTE_CLIENT ;


 int Free (TYPE_1__*) ;
 int RpcFree (int ) ;

void CcDisconnectRpc(REMOTE_CLIENT *rc)
{

 if (rc == ((void*)0))
 {
  return;
 }

 RpcFree(rc->Rpc);
 Free(rc);
}
