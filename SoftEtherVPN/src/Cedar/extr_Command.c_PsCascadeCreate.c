
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int (* Write ) (TYPE_6__*,int ) ;} ;
struct TYPE_19__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_18__ {char* HubName; int Rpc; } ;
struct TYPE_17__ {int Online; TYPE_2__* ClientAuth; TYPE_1__* ClientOption; int Policy; int HubName; } ;
struct TYPE_16__ {int Username; int AuthType; } ;
struct TYPE_15__ {int RetryInterval; int MaxConnection; int UseEncrypt; int AdditionalConnectionInterval; int RequireBridgeRoutingMode; int NumRetry; int HubName; int Hostname; scalar_t__ Port; int AccountName; } ;
typedef TYPE_3__ RPC_CREATE_LINK ;
typedef TYPE_4__ PS ;
typedef int POLICY ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef TYPE_6__ CONSOLE ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;


 int CLIENT_AUTHTYPE_ANONYMOUS ;
 int CmdEvalHostAndPort ;
 int CmdEvalNotEmpty ;
 int CmdEvalSafe ;
 int CmdPrintError (TYPE_6__*,scalar_t__) ;
 int CmdPrompt ;
 int Copy (int *,int ,int) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_3__*) ;
 int GetDefaultPolicy () ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int INFINITE ;
 int * ParseCommandList (TYPE_6__*,char*,int *,TYPE_5__*,int) ;
 int ParseHostPort (char*,char**,scalar_t__*,int) ;
 scalar_t__ ScCreateLink (int ,TYPE_3__*) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 void* ZeroMalloc (int) ;
 int _UU (char*) ;
 int stub1 (TYPE_6__*,int ) ;

UINT PsCascadeCreate(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_LINK t;
 char *host = ((void*)0);
 UINT port = 443;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"SERVER", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Server"), CmdEvalHostAndPort, ((void*)0)},
  {"HUB", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Hub"), CmdEvalSafe, ((void*)0)},
  {"USERNAME", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Username"), CmdEvalNotEmpty, ((void*)0)},
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

 ParseHostPort(GetParamStr(o, "SERVER"), &host, &port, 443);

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);

 t.Online = 0;

 Copy(&t.Policy, GetDefaultPolicy(), sizeof(POLICY));

 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), GetParamUniStr(o, "[name]"));
 t.ClientOption->Port = port;
 StrCpy(t.ClientOption->Hostname, sizeof(t.ClientOption->Hostname), host);
 StrCpy(t.ClientOption->HubName, sizeof(t.ClientOption->HubName), GetParamStr(o, "HUB"));
 t.ClientOption->NumRetry = INFINITE;
 t.ClientOption->RetryInterval = 15;
 t.ClientOption->MaxConnection = 8;
 t.ClientOption->UseEncrypt = 1;
 t.ClientOption->AdditionalConnectionInterval = 1;
 t.ClientOption->RequireBridgeRoutingMode = 1;

 t.ClientAuth = ZeroMalloc(sizeof(CLIENT_AUTH));
 t.ClientAuth->AuthType = CLIENT_AUTHTYPE_ANONYMOUS;
 StrCpy(t.ClientAuth->Username, sizeof(t.ClientAuth->Username), GetParamStr(o, "USERNAME"));

 Free(host);


 ret = ScCreateLink(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeRpcCreateLink(&t);

 FreeParamValueList(o);

 return 0;
}
