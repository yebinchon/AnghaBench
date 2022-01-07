
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
 int * NewPack () ;
 int OutRpcClientConfig (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 int RpcIsOk (int *) ;

UINT CcSetClientConfig(REMOTE_CLIENT *r, CLIENT_CONFIG *o)
{
 PACK *p, *ret;
 UINT err = 0;

 if (r == ((void*)0) || o == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();
 OutRpcClientConfig(p, o);

 ret = RpcCall(r->Rpc, "SetClientConfig", p);

 if (RpcIsOk(ret) == 0)
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
