
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {char* member_0; int * member_4; int member_3; int * member_2; int member_1; } ;
struct TYPE_8__ {int RemoteClient; } ;
struct TYPE_7__ {int Guid; int FileName; int Version; int MacAddress; scalar_t__ Enabled; int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_VLAN ;
typedef TYPE_2__ PC ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcGetVLan (int ,TYPE_1__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 int StrCpy (int ,int,int ) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;

UINT PcNicGetSetting(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_VLAN t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_NicCreate_PROMPT_NAME"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 StrCpy(t.DeviceName, sizeof(t.DeviceName), GetParamStr(o, "[name]"));

 ret = CcGetVLan(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

  CT *ct = CtNewStandard();
  wchar_t tmp[MAX_SIZE];

  StrToUni(tmp, sizeof(tmp), t.DeviceName);
  CtInsert(ct, _UU("CMD_NicGetSetting_1"), tmp);

  CtInsert(ct, _UU("CMD_NicGetSetting_2"), t.Enabled ? _UU("CMD_MSG_ENABLE") : _UU("CMD_MSG_DISABLE"));

  StrToUni(tmp, sizeof(tmp), t.MacAddress);
  CtInsert(ct, _UU("CMD_NicGetSetting_3"), tmp);

  StrToUni(tmp, sizeof(tmp), t.Version);
  CtInsert(ct, _UU("CMD_NicGetSetting_4"), tmp);

  StrToUni(tmp, sizeof(tmp), t.FileName);
  CtInsert(ct, _UU("CMD_NicGetSetting_5"), tmp);

  StrToUni(tmp, sizeof(tmp), t.Guid);
  CtInsert(ct, _UU("CMD_NicGetSetting_6"), tmp);

  CtFree(ct, c);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
