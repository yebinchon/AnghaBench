
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int unistr ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_14__ {int RemoteClient; } ;
struct TYPE_13__ {TYPE_1__* ClientOption; int AccountName; } ;
struct TYPE_12__ {scalar_t__ NumTokens; int * Token; } ;
struct TYPE_11__ {int CustomHttpHeader; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_4__ PC ;
typedef TYPE_5__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcGetAccount (int ,TYPE_3__*) ;
 int CiFreeClientGetAccount (TYPE_3__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamUniStr (int *,char*) ;
 int HTTP_CUSTOM_HEADER_MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,TYPE_5__*,int) ;
 TYPE_2__* ParseToken (int ,char*) ;
 int StrToUni (int *,int,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PcAccountHttpHeaderGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;


 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
 };


 LIST *o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 UniStrCpy(t.AccountName, sizeof(t.AccountName), GetParamUniStr(o, "[name]"));
 ret = CcGetAccount(pc->RemoteClient, &t);


 FreeParamValueList(o);

 if (ret == ERR_NO_ERROR)
 {
  wchar_t unistr[HTTP_CUSTOM_HEADER_MAX_SIZE];
  TOKEN_LIST *tokens = ((void*)0);
  UINT i = 0;
  CT *ct = CtNew();
  CtInsertColumn(ct, _UU("CMD_CT_STD_COLUMN_1"), 0);

  tokens = ParseToken(t.ClientOption->CustomHttpHeader, "\r\n");

  for (i = 0; i < tokens->NumTokens; i++)
  {
   StrToUni(unistr, sizeof(unistr), tokens->Token[i]);
   CtInsert(ct, unistr);
  }

  CtFreeEx(ct, c, 0);
 }
 else
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);

 return ret;
}
