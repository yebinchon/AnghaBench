
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_19__ {char* member_0; char* member_2; int * member_4; int * member_3; int * member_1; } ;
struct TYPE_18__ {int CapsList; int Rpc; } ;
struct TYPE_17__ {int Active; int Online; int TapMode; int HubName; int DeviceName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int * CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 scalar_t__ GetCapsBool (int ,char*) ;
 int GetParamStr (int *,char*) ;
 int GetParamYes (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScAddLocalBridge (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;
 int stub2 (TYPE_4__*,char*) ;
 int stub3 (TYPE_4__*,char*) ;
 int stub4 (TYPE_4__*,char*) ;
 int stub5 (TYPE_4__*,char*) ;
 int stub6 (TYPE_4__*,char*) ;

UINT PsBridgeCreate(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_LOCALBRIDGE t;

 PARAM args[] =
 {

  {"[hubname]", CmdPrompt, _UU("CMD_BridgeCreate_PROMPT_HUBNAME"), CmdEvalNotEmpty, ((void*)0)},
  {"DEVICE", CmdPrompt, _UU("CMD_BridgeCreate_PROMPT_DEVICE"), CmdEvalNotEmpty, ((void*)0)},
  {"TAP", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 t.Active = 1;
 StrCpy(t.DeviceName, sizeof(t.DeviceName), GetParamStr(o, "DEVICE"));
 StrCpy(t.HubName, sizeof(t.HubName), GetParamStr(o, "[hubname]"));
 t.Online = 1;
 t.TapMode = GetParamYes(o, "TAP");


 ret = ScAddLocalBridge(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  c->Write(c, _UU("SM_BRIDGE_INTEL"));
  c->Write(c, L"");

  if (GetCapsBool(ps->CapsList, "b_is_in_vm"))
  {

   c->Write(c, _UU("D_SM_VMBRIDGE@CAPTION"));
   c->Write(c, _UU("D_SM_VMBRIDGE@S_1"));
   c->Write(c, _UU("D_SM_VMBRIDGE@S_2"));
   c->Write(c, L"");
  }
 }

 FreeParamValueList(o);

 return 0;
}
