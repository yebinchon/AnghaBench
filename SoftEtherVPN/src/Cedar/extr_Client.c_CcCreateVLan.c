
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef int RPC_CLIENT_CREATE_VLAN ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int MsNoWarningSoundFree (char*) ;
 char* MsNoWarningSoundInit () ;
 int * NewPack () ;
 int OutRpcCreateVLan (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 int RpcIsOk (int *) ;

UINT CcCreateVLan(REMOTE_CLIENT *r, RPC_CLIENT_CREATE_VLAN *create)
{
 PACK *ret, *p;
 UINT err = 0;
 char *s = ((void*)0);

 if (r == ((void*)0) || create == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();
 OutRpcCreateVLan(p, create);





 ret = RpcCall(r->Rpc, "CreateVLan", p);





 if (RpcIsOk(ret) == 0)
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
