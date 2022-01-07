
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_GET_CA ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int InRpcGetCa (int *,int *) ;
 int * NewPack () ;
 int OutRpcGetCa (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcGetCa(REMOTE_CLIENT *r, RPC_GET_CA *get)
{
 PACK *p, *ret;
 UINT err = 0;

 if (r == ((void*)0) || get == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();
 OutRpcGetCa(p, get);

 ret = RpcCall(r->Rpc, "GetCa", p);

 if (RpcIsOk(ret))
 {
  InRpcGetCa(get, ret);
 }
 else
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
