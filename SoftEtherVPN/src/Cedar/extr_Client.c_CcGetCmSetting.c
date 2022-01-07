
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rpc; } ;
typedef TYPE_1__ REMOTE_CLIENT ;
typedef int PACK ;
typedef int CM_SETTING ;


 int ERR_INTERNAL_ERROR ;
 int FreePack (int *) ;
 int InRpcCmSetting (int *,int *) ;
 int * RpcCall (int ,char*,int *) ;
 int RpcGetError (int *) ;
 scalar_t__ RpcIsOk (int *) ;

UINT CcGetCmSetting(REMOTE_CLIENT *r, CM_SETTING *a)
{
 PACK *ret;

 if (r == ((void*)0) || a == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 ret = RpcCall(r->Rpc, "GetCmSetting", ((void*)0));

 if (RpcIsOk(ret))
 {
  InRpcCmSetting(a, ret);
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
