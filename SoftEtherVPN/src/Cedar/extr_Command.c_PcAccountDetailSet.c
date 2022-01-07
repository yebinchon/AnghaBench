
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_15__ {char* member_0; TYPE_6__* member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_14__ {int RemoteClient; } ;
struct TYPE_13__ {int StartupAccount; int ServerCert; TYPE_1__* ClientOption; int ClientAuth; int CheckServerCert; int AccountName; } ;
struct TYPE_12__ {void* NoUdpAcceleration; void* DisableQoS; void* NoRoutingTracking; void* RequireMonitorMode; void* RequireBridgeRoutingMode; void* HalfConnection; void* ConnectionDisconnectSpan; void* AdditionalConnectionInterval; void* MaxConnection; } ;
typedef TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_4__ PC ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;
typedef TYPE_6__ CMD_EVAL_MIN_MAX ;


 scalar_t__ CcGetAccount (int ,TYPE_2__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_2__*) ;
 int CiFreeClientGetAccount (TYPE_2__*) ;
 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 void* GetParamInt (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 void* GetParamYes (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_5__*,int) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PcAccountDetailSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;
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
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"MAXTCP", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_MaxTcp"), CmdEvalMinMax, &mm_maxtcp},
  {"INTERVAL", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_Interval"), CmdEvalMinMax, &mm_interval},
  {"TTL", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_TTL"), ((void*)0), ((void*)0)},
  {"HALF", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_HALF"), ((void*)0), ((void*)0)},
  {"BRIDGE", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_BRIDGE"), ((void*)0), ((void*)0)},
  {"MONITOR", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_MONITOR"), ((void*)0), ((void*)0)},
  {"NOTRACK", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_NOTRACK"), ((void*)0), ((void*)0)},
  {"NOQOS", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_NOQOS"), ((void*)0), ((void*)0)},
  {"DISABLEUDP", CmdPrompt, _UU("CMD_AccountDetailSet_Prompt_DISABLEUDP"), ((void*)0), ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 UniStrCpy(t.AccountName, sizeof(t.AccountName), GetParamUniStr(o, "[name]"));

 ret = CcGetAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  RPC_CLIENT_CREATE_ACCOUNT z;

  t.ClientOption->MaxConnection = GetParamInt(o, "MAXTCP");
  t.ClientOption->AdditionalConnectionInterval = GetParamInt(o, "INTERVAL");
  t.ClientOption->ConnectionDisconnectSpan = GetParamInt(o, "TTL");
  t.ClientOption->HalfConnection = GetParamYes(o, "HALF");
  t.ClientOption->RequireBridgeRoutingMode = GetParamYes(o, "BRIDGE");
  t.ClientOption->RequireMonitorMode = GetParamYes(o, "MONITOR");
  t.ClientOption->NoRoutingTracking = GetParamYes(o, "NOTRACK");
  t.ClientOption->DisableQoS = GetParamYes(o, "NOQOS");
  t.ClientOption->NoUdpAcceleration = GetParamYes(o, "DISABLEUDP");

  Zero(&z, sizeof(z));
  z.CheckServerCert = t.CheckServerCert;
  z.ClientAuth = t.ClientAuth;
  z.ClientOption = t.ClientOption;
  z.ServerCert = t.ServerCert;
  z.StartupAccount = t.StartupAccount;

  ret = CcSetAccount(pc->RemoteClient, &z);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 return ret;
}
