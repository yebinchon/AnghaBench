
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {int * x; } ;
typedef TYPE_1__ RPC_GET_ISSUER ;
typedef TYPE_2__ REMOTE_CLIENT ;
typedef int PACK ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int FreeX (int *) ;
 int InRpcGetIssuer (TYPE_1__*,int *) ;
 int * NewPack () ;
 int OutRpcGetIssuer (int *,TYPE_1__*) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcGetIssuer(REMOTE_CLIENT *r, RPC_GET_ISSUER *a)
{
 PACK *p, *ret;
 UINT err = 0;

 if (r == ((void*)0) || a == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 p = NewPack();
 OutRpcGetIssuer(p, a);

 ret = RpcCall(r->Rpc, "GetIssuer", p);

 if (RpcIsOk(ret))
 {
  if (a->x != ((void*)0))
  {
   FreeX(a->x);
   a->x = ((void*)0);
  }
  InRpcGetIssuer(a, ret);
 }
 else
 {
  err = RpcGetError(ret);
 }

 FreePack(ret);

 return err;
}
