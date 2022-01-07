
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_CLIENT_VERSION ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int InRpcClientVersion (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcGetClientVersion(REMOTE_CLIENT *r, RPC_CLIENT_VERSION *a)
{
 PACK *ret;

 if (r == ((void*)0) || a == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 ret = RpcCall(r->Rpc, "GetClientVersion", ((void*)0));

 if (RpcIsOk(ret))
 {
  InRpcClientVersion(a, ret);
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
