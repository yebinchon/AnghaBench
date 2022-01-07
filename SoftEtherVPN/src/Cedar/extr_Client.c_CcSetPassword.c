
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_CLIENT_PASSWORD ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int * NewPack () ;
 int OutRpcClientPassword (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcSetPassword(REMOTE_CLIENT *r, RPC_CLIENT_PASSWORD *pass)
{
 PACK *ret, *p;

 if (r == ((void*)0) || pass == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();

 OutRpcClientPassword(p, pass);

 ret = RpcCall(r->Rpc, "SetPassword", p);

 if (RpcIsOk(ret))
 {
  FreePack(ret);
  return 0;
 }
 else
 {
  UINT err = RpcGetError(ret);
  FreePack(ret);
  return err;
 }
}
