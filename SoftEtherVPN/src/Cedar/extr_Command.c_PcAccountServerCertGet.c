
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_11__ {int RemoteClient; } ;
struct TYPE_10__ {int StartupAccount; int * ServerCert; int ClientOption; int ClientAuth; int RetryOnServerCert; int CheckServerCert; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_3__ PC ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 scalar_t__ CcGetAccount (int ,TYPE_1__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_1__*) ;
 int CiFreeClientGetAccount (TYPE_1__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeX (int *) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_4__*,int) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PcAccountServerCertGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"SAVECERT", CmdPrompt, _UU("CMD_SAVECERTPATH"), CmdEvalNotEmpty, ((void*)0)},
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

  if (t.ServerCert != ((void*)0))
  {
   FreeX(t.ServerCert);
  }
  t.ServerCert = ((void*)0);

  Zero(&z, sizeof(z));
  z.CheckServerCert = t.CheckServerCert;
  z.RetryOnServerCert = t.RetryOnServerCert;
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
