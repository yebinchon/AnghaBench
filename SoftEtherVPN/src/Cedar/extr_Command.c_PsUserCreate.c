
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int random_pass2 ;
typedef int random_pass ;
typedef int args ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_15__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_14__ {int Rpc; int * HubName; } ;
struct TYPE_13__ {int AuthData; int AuthType; int Name; int Note; int Realname; int GroupName; int HubName; } ;
typedef TYPE_1__ RPC_SET_USER ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int AUTHTYPE_PASSWORD ;
 int AUTHTYPE_RADIUS ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcSetUser (TYPE_1__*) ;
 int * GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int MD5_SIZE ;
 int NewPasswordAuthDataRaw (int *,int *) ;
 int NewRadiusAuthData (int *) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 int Rand (int *,int) ;
 int SHA1_SIZE ;
 scalar_t__ ScCreateUser (int ,TYPE_1__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (int ,int,int *) ;
 int Trim (int ) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsUserCreate(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_SET_USER t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_UserCreate_Prompt_NAME"), CmdEvalNotEmpty, ((void*)0)},
  {"GROUP", CmdPrompt, _UU("CMD_UserCreate_Prompt_GROUP"), ((void*)0), ((void*)0)},
  {"REALNAME", CmdPrompt, _UU("CMD_UserCreate_Prompt_REALNAME"), ((void*)0), ((void*)0)},
  {"NOTE", CmdPrompt, _UU("CMD_UserCreate_Prompt_NOTE"), ((void*)0), ((void*)0)},
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
 StrCpy(t.Name, sizeof(t.Name), GetParamStr(o, "[name]"));
 StrCpy(t.GroupName, sizeof(t.GroupName), GetParamStr(o, "GROUP"));
 UniStrCpy(t.Realname, sizeof(t.Realname), GetParamUniStr(o, "REALNAME"));
 UniStrCpy(t.Note, sizeof(t.Note), GetParamUniStr(o, "NOTE"));

 Trim(t.Name);
 if (StrCmpi(t.Name, "*") == 0)
 {
  t.AuthType = AUTHTYPE_RADIUS;
  t.AuthData = NewRadiusAuthData(((void*)0));
 }
 else
 {
  UCHAR random_pass[SHA1_SIZE];
  UCHAR random_pass2[MD5_SIZE];

  Rand(random_pass, sizeof(random_pass));
  Rand(random_pass2, sizeof(random_pass2));
  t.AuthType = AUTHTYPE_PASSWORD;
  t.AuthData = NewPasswordAuthDataRaw(random_pass, random_pass2);
 }


 ret = ScCreateUser(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeRpcSetUser(&t);

 FreeParamValueList(o);

 return 0;
}
