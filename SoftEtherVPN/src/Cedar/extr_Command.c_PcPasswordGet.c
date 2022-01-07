
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int RemoteClient; } ;
struct TYPE_5__ {scalar_t__ PasswordRemoteOnly; scalar_t__ IsPasswordPresented; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD_SETTING ;
typedef TYPE_2__ PC ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcGetPasswordSetting (int ,TYPE_1__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int ) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PcPasswordGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_PASSWORD_SETTING t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcGetPasswordSetting(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

  CT *ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_PasswordGet_1"),
   t.IsPasswordPresented ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));

  CtInsert(ct, _UU("CMD_PasswordGet_2"),
   t.PasswordRemoteOnly ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));

  CtFree(ct, c);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
