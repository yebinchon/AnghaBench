
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Rpc; } ;
typedef int RPC_CLIENT_CONNECT ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int CcSetServiceToForegroundProcess (TYPE_1__*) ;
 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int * NewPack () ;
 int OutRpcClientConnect (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 int RpcIsOk (int *) ;

UINT CcDisconnect(REMOTE_CLIENT *r, RPC_CLIENT_CONNECT *connect)
{
 PACK *ret, *p;
 UINT err = 0;

 if (r == ((void*)0) || connect == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 CcSetServiceToForegroundProcess(r);

 p = NewPack();
 OutRpcClientConnect(p, connect);

 ret = RpcCall(r->Rpc, "Disconnect", p);

 if (RpcIsOk(ret) == 0)
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
