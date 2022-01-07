
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int (* Write ) (TYPE_5__*,int ) ;} ;
struct TYPE_18__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int RemoteClient; } ;
struct TYPE_16__ {TYPE_1__* ClientAuth; int AccountName; } ;
struct TYPE_15__ {scalar_t__ AuthType; int * ClientX; } ;
typedef TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_3__ PC ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;


 scalar_t__ CLIENT_AUTHTYPE_CERT ;
 scalar_t__ CcGetAccount (int ,TYPE_2__*) ;
 int CiFreeClientGetAccount (TYPE_2__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 int UniStrCpy (int ,int,int ) ;
 int XToFileW (int *,int ,int) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;
 int stub2 (TYPE_5__*,int ) ;

UINT PcAccountCertGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
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
  if (t.ClientAuth->AuthType != CLIENT_AUTHTYPE_CERT)
  {
   c->Write(c, _UU("CMD_CascadeCertSet_Not_Auth_Cert"));
   ret = ERR_INTERNAL_ERROR;
  }
  else if (t.ClientAuth->ClientX == ((void*)0))
  {
   c->Write(c, _UU("CMD_CascadeCertSet_Cert_Not_Exists"));
   ret = ERR_INTERNAL_ERROR;
  }
  else
  {
   XToFileW(t.ClientAuth->ClientX, GetParamUniStr(o, "SAVECERT"), 1);
  }
 }

 CiFreeClientGetAccount(&t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
