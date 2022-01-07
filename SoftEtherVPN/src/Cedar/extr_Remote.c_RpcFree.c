
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC ;


 int RpcFreeEx (int *,int) ;

void RpcFree(RPC *rpc)
{
 RpcFreeEx(rpc, 0);
}
