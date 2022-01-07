
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_21__ {void* DisableQoS; void* HalfConnection; void* ConnectionDisconnectSpan; void* AdditionalConnectionInterval; void* MaxConnection; int AccountName; } ;
struct TYPE_20__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_19__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_18__ {char* member_0; TYPE_5__* member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int Rpc; int * HubName; } ;
struct TYPE_16__ {TYPE_7__* ClientOption; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ CMD_EVAL_MIN_MAX ;
typedef int CLIENT_OPTION ;


 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_1__*) ;
 void* GetParamInt (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 void* GetParamYes (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetLink (int ,TYPE_1__*) ;
 scalar_t__ ScSetLink (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_7__* ZeroMalloc (int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsCascadeDetailSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_LINK t;
 CMD_EVAL_MIN_MAX mm_maxtcp =
 {
  "CMD_CascadeDetailSet_Eval_MaxTcp", 1, 32
 };
 CMD_EVAL_MIN_MAX mm_interval =
 {
  "CMD_CascadeDetailSet_Eval_Interval", 1, 4294967295UL
 };

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"MAXTCP", CmdPrompt, _UU("CMD_CascadeDetailSet_Prompt_MaxTcp"), CmdEvalMinMax, &mm_maxtcp},
  {"INTERVAL", CmdPrompt, _UU("CMD_CascadeDetailSet_Prompt_Interval"), CmdEvalMinMax, &mm_interval},
  {"TTL", CmdPrompt, _UU("CMD_CascadeDetailSet_Prompt_TTL"), ((void*)0), ((void*)0)},
  {"HALF", CmdPrompt, _UU("CMD_CascadeDetailSet_Prompt_HALF"), ((void*)0), ((void*)0)},
  {"NOQOS", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_NOQOS"), ((void*)0), ((void*)0)},
 };


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), GetParamUniStr(o, "[name]"));


 ret = ScGetLink(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {

  t.ClientOption->MaxConnection = GetParamInt(o, "MAXTCP");
  t.ClientOption->AdditionalConnectionInterval = GetParamInt(o, "INTERVAL");
  t.ClientOption->ConnectionDisconnectSpan = GetParamInt(o, "TTL");
  t.ClientOption->HalfConnection = GetParamYes(o, "HALF");
  t.ClientOption->DisableQoS = GetParamYes(o, "NOQOS");

  ret = ScSetLink(ps->Rpc, &t);
  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  FreeRpcCreateLink(&t);
 }

 FreeParamValueList(o);

 return 0;
}
