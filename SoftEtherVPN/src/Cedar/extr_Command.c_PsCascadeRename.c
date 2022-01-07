
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_14__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_13__ {int Rpc; int * HubName; } ;
struct TYPE_12__ {int OldAccountName; int NewAccountName; int HubName; } ;
typedef TYPE_1__ RPC_RENAME_LINK ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScRenameLink (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsCascadeRename(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_RENAME_LINK t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeRename_PROMPT_OLD"), CmdEvalNotEmpty, ((void*)0)},
  {"NEW", CmdPrompt, _UU("CMD_CascadeRename_PROMPT_NEW"), CmdEvalNotEmpty, ((void*)0)},
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

 UniStrCpy(t.NewAccountName, sizeof(t.NewAccountName), GetParamUniStr(o, "NEW"));
 UniStrCpy(t.OldAccountName, sizeof(t.OldAccountName), GetParamUniStr(o, "[name]"));


 ret = ScRenameLink(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
