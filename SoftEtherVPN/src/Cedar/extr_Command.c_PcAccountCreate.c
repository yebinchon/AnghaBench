
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_13__ {int RemoteClient; } ;
struct TYPE_12__ {TYPE_2__* ClientAuth; TYPE_1__* ClientOption; } ;
struct TYPE_11__ {int Username; int AuthType; } ;
struct TYPE_10__ {int RetryInterval; int MaxConnection; int UseEncrypt; int AdditionalConnectionInterval; int DeviceName; int NumRetry; int HubName; int Hostname; scalar_t__ Port; int AccountName; } ;
typedef TYPE_3__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_4__ PC ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;


 int CLIENT_AUTHTYPE_ANONYMOUS ;
 scalar_t__ CcCreateAccount (int ,TYPE_3__*) ;
 int CiFreeClientCreateAccount (TYPE_3__*) ;
 int CmdEvalHostAndPort ;
 int CmdEvalNotEmpty ;
 int CmdEvalSafe ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int INFINITE ;
 int * ParseCommandList (int *,char*,int *,TYPE_5__*,int) ;
 int ParseHostPort (char*,char**,scalar_t__*,int) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 void* ZeroMalloc (int) ;
 int _UU (char*) ;

UINT PcAccountCreate(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_CREATE_ACCOUNT t;
 UINT port = 443;
 char *host = ((void*)0);

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"SERVER", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Server"), CmdEvalHostAndPort, ((void*)0)},
  {"HUB", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Hub"), CmdEvalSafe, ((void*)0)},
  {"USERNAME", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Username"), CmdEvalNotEmpty, ((void*)0)},
  {"NICNAME", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Nicname"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 ParseHostPort(GetParamStr(o, "SERVER"), &host, &port, 443);


 Zero(&t, sizeof(t));

 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), GetParamUniStr(o, "[name]"));
 t.ClientOption->Port = port;
 StrCpy(t.ClientOption->Hostname, sizeof(t.ClientOption->Hostname), host);
 StrCpy(t.ClientOption->HubName, sizeof(t.ClientOption->HubName), GetParamStr(o, "HUB"));
 t.ClientOption->NumRetry = INFINITE;
 t.ClientOption->RetryInterval = 15;
 t.ClientOption->MaxConnection = 1;
 t.ClientOption->UseEncrypt = 1;
 t.ClientOption->AdditionalConnectionInterval = 1;
 StrCpy(t.ClientOption->DeviceName, sizeof(t.ClientOption->DeviceName), GetParamStr(o, "NICNAME"));

 t.ClientAuth = ZeroMalloc(sizeof(CLIENT_AUTH));
 t.ClientAuth->AuthType = CLIENT_AUTHTYPE_ANONYMOUS;
 StrCpy(t.ClientAuth->Username, sizeof(t.ClientAuth->Username), GetParamStr(o, "USERNAME"));

 Free(host);

 ret = CcCreateAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

 }

 CiFreeClientCreateAccount(&t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
