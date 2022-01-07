
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int c ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_13__ {int RemoteClient; } ;
struct TYPE_12__ {int StartupAccount; int ServerCert; int RetryOnServerCert; int CheckServerCert; TYPE_1__* ClientOption; int ClientAuth; int AccountName; } ;
struct TYPE_11__ {int HubName; int Hostname; scalar_t__ Port; } ;
typedef TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_4__ PC ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 scalar_t__ CcGetAccount (int ,TYPE_2__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_2__*) ;
 int CiFreeClientGetAccount (TYPE_2__*) ;
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
 int * ParseCommandList (int *,char*,int *,TYPE_5__*,int) ;
 int ParseHostPort (char*,char**,scalar_t__*,int) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PcAccountSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;
 char *host = ((void*)0);
 UINT port = 443;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"SERVER", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Server"), CmdEvalHostAndPort, ((void*)0)},
  {"HUB", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Hub"), CmdEvalSafe, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ParseHostPort(GetParamStr(o, "SERVER"), &host, &port, 443);

 Zero(&t, sizeof(t));
 UniStrCpy(t.AccountName, sizeof(t.AccountName), GetParamUniStr(o, "[name]"));

 ret = CcGetAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  RPC_CLIENT_CREATE_ACCOUNT c;

  t.ClientOption->Port = port;
  StrCpy(t.ClientOption->Hostname, sizeof(t.ClientOption->Hostname), host);
  StrCpy(t.ClientOption->HubName, sizeof(t.ClientOption->HubName), GetParamStr(o, "HUB"));

  Zero(&c, sizeof(c));

  c.ClientAuth = t.ClientAuth;
  c.ClientOption = t.ClientOption;
  c.CheckServerCert = t.CheckServerCert;
  c.RetryOnServerCert = t.RetryOnServerCert;
  c.ServerCert = t.ServerCert;
  c.StartupAccount = t.StartupAccount;

  ret = CcSetAccount(pc->RemoteClient, &c);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 Free(host);

 return ret;
}
