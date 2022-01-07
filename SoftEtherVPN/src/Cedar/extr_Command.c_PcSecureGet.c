
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_11__ {int RemoteClient; } ;
struct TYPE_10__ {scalar_t__ DeviceId; } ;
typedef TYPE_1__ RPC_USE_SECURE ;
typedef TYPE_2__ PC ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;


 scalar_t__ CcGetUseSecure (int ,TYPE_1__*) ;
 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 int UniFormat (int *,int,int ,scalar_t__) ;
 int UniStrCpy (int *,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PcSecureGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_USE_SECURE t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcGetUseSecure(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

  wchar_t tmp[MAX_SIZE];

  if (t.DeviceId != 0)
  {
   UniFormat(tmp, sizeof(tmp), _UU("CMD_SecureGet_Print"), t.DeviceId);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("CMD_SecureGet_NoPrint"));
  }
  c->Write(c, tmp);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
