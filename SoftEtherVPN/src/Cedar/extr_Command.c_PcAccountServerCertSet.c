
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int (* Write ) (TYPE_5__*,int ) ;} ;
struct TYPE_17__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_16__ {int RemoteClient; } ;
struct TYPE_15__ {int StartupAccount; int * ServerCert; int ClientOption; int ClientAuth; int RetryOnServerCert; int CheckServerCert; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_3__ PC ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;


 scalar_t__ CcGetAccount (int ,TYPE_1__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_1__*) ;
 int CiFreeClientGetAccount (TYPE_1__*) ;
 int * CloneX (int *) ;
 int CmdEvalIsFile ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int * FileToXW (int ) ;
 int FreeParamValueList (int *) ;
 int FreeX (int *) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;

UINT PcAccountServerCertSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;
 X *x;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"LOADCERT", CmdPrompt, _UU("CMD_LOADCERTPATH"), CmdEvalIsFile, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 x = FileToXW(GetParamUniStr(o, "LOADCERT"));
 if (x == ((void*)0))
 {
  FreeParamValueList(o);
  c->Write(c, _UU("CMD_LOADCERT_FAILED"));
  return ERR_INTERNAL_ERROR;
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
  t.ServerCert = CloneX(x);

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

 FreeX(x);

 return ret;
}
