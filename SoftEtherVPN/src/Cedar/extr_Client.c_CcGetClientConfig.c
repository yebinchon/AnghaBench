
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;
typedef int CLIENT_CONFIG ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int InRpcClientConfig (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcGetClientConfig(REMOTE_CLIENT *r, CLIENT_CONFIG *o)
{
 PACK *ret;
 UINT err = 0;

 if (r == ((void*)0) || o == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 ret = RpcCall(r->Rpc, "GetClientConfig", ((void*)0));

 if (RpcIsOk(ret))
 {
  InRpcClientConfig(o, ret);
 }
 else
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
