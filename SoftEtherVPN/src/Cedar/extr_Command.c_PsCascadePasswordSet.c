
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int AccountName; } ;
struct TYPE_21__ {int (* Write ) (TYPE_5__*,int *) ;} ;
struct TYPE_20__ {char* member_0; int * member_4; int * member_3; int * member_2; int member_1; } ;
struct TYPE_19__ {char* HubName; int Rpc; } ;
struct TYPE_18__ {TYPE_1__* ClientAuth; TYPE_8__* ClientOption; int HubName; } ;
struct TYPE_17__ {int PlainPassword; int AuthType; int Username; int HashedPassword; } ;
typedef TYPE_2__ RPC_CREATE_LINK ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;
typedef int CLIENT_OPTION ;


 int CLIENT_AUTHTYPE_PASSWORD ;
 int CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 int CmdPromptChoosePassword ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_2__*) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int HashPassword (int ,int ,char*) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 scalar_t__ ScGetLink (int ,TYPE_2__*) ;
 scalar_t__ ScSetLink (int ,TYPE_2__*) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_8__* ZeroMalloc (int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_5__*,int *) ;
 int stub2 (TYPE_5__*,int *) ;

UINT PsCascadePasswordSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_LINK t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"PASSWORD", CmdPromptChoosePassword, ((void*)0), ((void*)0), ((void*)0)},
  {"TYPE", CmdPrompt, _UU("CMD_CascadePasswordSet_Prompt_Type"), CmdEvalNotEmpty, ((void*)0)},
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

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {

  char *typestr = GetParamStr(o, "TYPE");

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
   FreeRpcCreateLink(&t);
   ret = ERR_INVALID_PARAMETER;
   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ERR_INTERNAL_ERROR;
  }

  ret = ScSetLink(ps->Rpc, &t);
  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  FreeRpcCreateLink(&t);
 }

 FreeParamValueList(o);

 return 0;
}
