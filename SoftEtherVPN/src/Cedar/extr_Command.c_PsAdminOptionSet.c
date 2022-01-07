
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
struct TYPE_17__ {int Rpc; int * HubName; } ;
struct TYPE_16__ {scalar_t__ NumItem; int HubName; TYPE_1__* Items; } ;
struct TYPE_15__ {int Value; int Name; } ;
typedef TYPE_2__ RPC_ADMIN_OPTION ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int FreeParamValueList (int *) ;
 int FreeRpcAdminOption (TYPE_2__*) ;
 int GetParamInt (int *,char*) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 scalar_t__ ScGetHubAdminOptions (int ,TYPE_2__*) ;
 scalar_t__ ScSetHubAdminOptions (int ,TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int StrCpy (int ,int,int *) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;

UINT PsAdminOptionSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ADMIN_OPTION t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_AdminOptionSet_Prompt_name"), CmdEvalNotEmpty, ((void*)0)},
  {"VALUE", CmdPrompt, _UU("CMD_AdminOptionSet_Prompt_VALUE"), CmdEvalNotEmpty, ((void*)0)},
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


 ret = ScGetHubAdminOptions(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  bool b = 0;

  for (i = 0;i < t.NumItem;i++)
  {
   if (StrCmpi(t.Items[i].Name, GetParamStr(o, "[name]")) == 0)
   {
    t.Items[i].Value = GetParamInt(o, "VALUE");
    b = 1;
   }
  }

  if (b == 0)
  {

   ret = ERR_OBJECT_NOT_FOUND;
   CmdPrintError(c, ret);
   FreeParamValueList(o);
   FreeRpcAdminOption(&t);
   return ret;
  }
  else
  {
   StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
   ret = ScSetHubAdminOptions(ps->Rpc, &t);

   if (ret != ERR_NO_ERROR)
   {

    CmdPrintError(c, ret);
    FreeParamValueList(o);
    return ret;
   }
  }
 }

 FreeRpcAdminOption(&t);

 FreeParamValueList(o);

 return 0;
}
