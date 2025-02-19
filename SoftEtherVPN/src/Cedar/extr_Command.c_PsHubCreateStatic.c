
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {char* member_0; int * member_4; int * member_3; int * member_2; int member_1; } ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {int Online; int SecurePassword; int HashedPassword; scalar_t__ HubType; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_HUB ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 int ADMINISTRATOR_USERNAME ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CmdPromptChoosePassword ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 int HashPassword (int ,int ,char*) ;
 int IsEmptyStr (char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScCreateHub (int ,TYPE_1__*) ;
 int Sha0 (int ,char*,int ) ;
 int StrCpy (int ,int,char*) ;
 int StrLen (char*) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;

UINT PsHubCreateStatic(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_HUB t;
 char *pass = "";
 UINT hub_type = HUB_TYPE_FARM_STATIC;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_HubCreate_PROMPT_NAME"), CmdEvalNotEmpty, ((void*)0)},
  {"PASSWORD", CmdPromptChoosePassword, ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 StrCpy(t.HubName, sizeof(t.HubName), GetParamStr(o, "[name]"));
 t.HubType = hub_type;

 if (IsEmptyStr(GetParamStr(o, "PASSWORD")) == 0)
 {
  pass = GetParamStr(o, "PASSWORD");
 }

 Sha0(t.HashedPassword, pass, StrLen(pass));
 HashPassword(t.SecurePassword, ADMINISTRATOR_USERNAME, pass);
 t.Online = 1;


 ret = ScCreateHub(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
