
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int InRpcClientGetAccount (int *,int *) ;
 int * NewPack () ;
 int OutRpcClientGetAccount (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcGetAccount(REMOTE_CLIENT *r, RPC_CLIENT_GET_ACCOUNT *a)
{
 PACK *ret, *p;
 UINT err = 0;

 if (r == ((void*)0) || a == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();
 OutRpcClientGetAccount(p, a);

 ret = RpcCall(r->Rpc, "GetAccount", p);

 if (RpcIsOk(ret))
 {
  InRpcClientGetAccount(a, ret);
 }
 else
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
