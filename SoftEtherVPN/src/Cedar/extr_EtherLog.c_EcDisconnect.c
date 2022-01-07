
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC ;


 int RpcFree (int *) ;

void EcDisconnect(RPC *rpc)
{

 if (rpc == ((void*)0))
 {
  return;
 }

 RpcFree(rpc);
}
