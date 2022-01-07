
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_CLIENT_DELETE_ACCOUNT ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int * NewPack () ;
 int OutRpcClientDeleteAccount (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 int RpcIsOk (int *) ;

UINT CcSetStartupAccount(REMOTE_CLIENT *r, RPC_CLIENT_DELETE_ACCOUNT *a)
{
 PACK *ret, *p;
 UINT err = 0;

 if (r == ((void*)0) || a == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();
 OutRpcClientDeleteAccount(p, a);

 ret = RpcCall(r->Rpc, "SetStartupAccount", p);

 if (RpcIsOk(ret) == 0)
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
