
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_18__ {int RemoteClient; } ;
struct TYPE_17__ {TYPE_1__* ClientOption; int StartupAccount; int ServerCert; int ClientAuth; int RetryOnServerCert; int CheckServerCert; int AccountName; } ;
struct TYPE_16__ {scalar_t__ NumTokens; char** Token; } ;
struct TYPE_15__ {TYPE_3__* CustomHttpHeader; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_3__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_5__ PC ;
typedef TYPE_6__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 scalar_t__ CcGetAccount (int ,TYPE_3__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_3__*) ;
 int CiFreeClientGetAccount (TYPE_3__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_6__*,int) ;
 TYPE_2__* ParseToken (TYPE_3__*,char*) ;
 int StartWith (char*,char*) ;
 int StrCat (TYPE_3__*,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PcAccountHttpHeaderDelete(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;


 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"NAME", CmdPrompt, _UU("CMD_AccountHttpHeader_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
 };


 LIST *o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 UniStrCpy(t.AccountName, sizeof(t.AccountName), GetParamUniStr(o, "[name]"));
 ret = CcGetAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  UINT i = 0;
  TOKEN_LIST *tokens = ((void*)0);
  RPC_CLIENT_CREATE_ACCOUNT z;
  char *value = GetParamStr(o, "NAME");

  Zero(&z, sizeof(z));
  z.CheckServerCert = t.CheckServerCert;
  z.RetryOnServerCert = t.RetryOnServerCert;
  z.ClientAuth = t.ClientAuth;
  z.ClientOption = t.ClientOption;
  z.ServerCert = t.ServerCert;
  z.StartupAccount = t.StartupAccount;

  Zero(z.ClientOption->CustomHttpHeader, sizeof(z.ClientOption->CustomHttpHeader));

  tokens = ParseToken(t.ClientOption->CustomHttpHeader, "\r\n");

  for (i = 0; i < tokens->NumTokens; i++)
  {
   if (StartWith(tokens->Token[i], value) == 0)
   {
    StrCat(z.ClientOption->CustomHttpHeader, sizeof(z.ClientOption->CustomHttpHeader), tokens->Token[i]);
    StrCat(z.ClientOption->CustomHttpHeader, 1, "\r\n");
   }
  }

  ret = CcSetAccount(pc->RemoteClient, &z);
 }
 else
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 return ret;
}
