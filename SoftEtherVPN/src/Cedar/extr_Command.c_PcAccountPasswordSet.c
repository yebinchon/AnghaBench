
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int (* Write ) (TYPE_6__*,int *) ;} ;
struct TYPE_19__ {char* member_0; int * member_4; int * member_3; int * member_2; int member_1; } ;
struct TYPE_18__ {int RemoteClient; } ;
struct TYPE_17__ {int StartupAccount; int ServerCert; int ClientOption; TYPE_1__* ClientAuth; int RetryOnServerCert; int CheckServerCert; int AccountName; } ;
struct TYPE_16__ {int PlainPassword; int AuthType; int Username; int HashedPassword; } ;
typedef TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_4__ PC ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef TYPE_6__ CONSOLE ;


 int CLIENT_AUTHTYPE_PASSWORD ;
 int CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 scalar_t__ CcGetAccount (int ,TYPE_2__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_2__*) ;
 int CiFreeClientGetAccount (TYPE_2__*) ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_6__*,scalar_t__) ;
 int CmdPrompt ;
 int CmdPromptChoosePassword ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int HashPassword (int ,int ,char*) ;
 int * ParseCommandList (TYPE_6__*,char*,int *,TYPE_5__*,int) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_6__*,int *) ;

UINT PcAccountPasswordSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"PASSWORD", CmdPromptChoosePassword, ((void*)0), ((void*)0), ((void*)0)},
  {"TYPE", CmdPrompt, _UU("CMD_CascadePasswordSet_Prompt_Type"), CmdEvalNotEmpty, ((void*)0)},
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
  char *typestr = GetParamStr(o, "TYPE");
  RPC_CLIENT_CREATE_ACCOUNT z;


  if (StartWith("standard", typestr))
  {
   t.ClientAuth->AuthType = CLIENT_AUTHTYPE_PASSWORD;
   HashPassword(t.ClientAuth->HashedPassword, t.ClientAuth->Username,
    GetParamStr(o, "PASSWORD"));
  }
  else if (StartWith("radius", typestr) || StartWith("ntdomain", typestr))
  {
   t.ClientAuth->AuthType = CLIENT_AUTHTYPE_PLAIN_PASSWORD;

   StrCpy(t.ClientAuth->PlainPassword, sizeof(t.ClientAuth->PlainPassword),
    GetParamStr(o, "PASSWORD"));
  }
  else
  {

   c->Write(c, _UU("CMD_CascadePasswordSet_Type_Invalid"));
   ret = ERR_INVALID_PARAMETER;
  }

  if (ret == ERR_NO_ERROR)
  {
   Zero(&z, sizeof(z));
   z.CheckServerCert = t.CheckServerCert;
   z.RetryOnServerCert = t.RetryOnServerCert;
   z.ClientAuth = t.ClientAuth;
   z.ClientOption = t.ClientOption;
   z.ServerCert = t.ServerCert;
   z.StartupAccount = t.StartupAccount;

   ret = CcSetAccount(pc->RemoteClient, &z);
  }
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 return ret;
}
