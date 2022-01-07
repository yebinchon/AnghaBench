
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_CLIENT_ENUM_SECURE ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int InRpcClientEnumSecure (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcEnumSecure(REMOTE_CLIENT *r, RPC_CLIENT_ENUM_SECURE *e)
{
 PACK *ret;
 UINT err = 0;

 if (r == ((void*)0) || e == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 ret = RpcCall(r->Rpc, "EnumSecure", ((void*)0));

 if (RpcIsOk(ret))
 {
  InRpcClientEnumSecure(e, ret);
 }
 else
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
