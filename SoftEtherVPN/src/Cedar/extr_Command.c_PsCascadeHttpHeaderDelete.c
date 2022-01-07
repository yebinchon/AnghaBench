
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {TYPE_2__* CustomHttpHeader; int AccountName; } ;
struct TYPE_23__ {int (* Write ) (TYPE_5__*,int ) ;} ;
struct TYPE_22__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_21__ {int Rpc; int * HubName; } ;
struct TYPE_20__ {TYPE_7__* ClientOption; int HubName; } ;
struct TYPE_19__ {scalar_t__ NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ RPC_CREATE_LINK ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;
typedef int CLIENT_OPTION ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_2__*) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 TYPE_1__* ParseToken (TYPE_2__*,char*) ;
 scalar_t__ ScGetLink (int ,TYPE_2__*) ;
 scalar_t__ ScSetLink (int ,TYPE_2__*) ;
 int StartWith (char*,char*) ;
 int StrCat (TYPE_2__*,int,char*) ;
 int StrCpy (int ,int,int *) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_7__* ZeroMalloc (int) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;

UINT PsCascadeHttpHeaderDelete(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CREATE_LINK t;


 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"NAME", CmdPrompt, _UU("CMD_CascadeHttpHeader_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
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


 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), GetParamUniStr(o, "[name]"));
 ret = ScGetLink(ps->Rpc, &t);

 if (ret == ERR_NO_ERROR)
 {
  UINT i = 0;
  TOKEN_LIST *tokens = ((void*)0);
  char *value = GetParamStr(o, "NAME");

  Zero(t.ClientOption->CustomHttpHeader, sizeof(t.ClientOption->CustomHttpHeader));

  tokens = ParseToken(t.ClientOption->CustomHttpHeader, "\r\n");

  for (i = 0; i < tokens->NumTokens; i++)
  {
   if (StartWith(tokens->Token[i], value) == 0)
   {
    StrCat(t.ClientOption->CustomHttpHeader, sizeof(t.ClientOption->CustomHttpHeader), tokens->Token[i]);
    StrCat(t.ClientOption->CustomHttpHeader, 1, "\r\n");
   }
  }

  ret = ScSetLink(ps->Rpc, &t);
 }
 else
 {

  CmdPrintError(c, ret);
 }

 FreeRpcCreateLink(&t);


 FreeParamValueList(o);

 return ret;
}
