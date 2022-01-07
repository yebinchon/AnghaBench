
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
struct TYPE_9__ {int Password; int UserName; int HubName; int Id; } ;
struct TYPE_8__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_7__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ PARAM ;
typedef int LIST ;
typedef TYPE_3__ ETHERIP_ID ;
typedef int CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_2__*,int) ;
 scalar_t__ ScAddEtherIpId (int ,TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PsEtherIpClientAdd(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 ETHERIP_ID t;

 PARAM args[] =
 {

  {"[ID]", CmdPrompt, _UU("CMD_EtherIpClientAdd_Prompt_ID"), CmdEvalNotEmpty, ((void*)0)},
  {"HUB", CmdPrompt, _UU("CMD_EtherIpClientAdd_Prompt_HUB"), CmdEvalNotEmpty, ((void*)0)},
  {"USERNAME", CmdPrompt, _UU("CMD_EtherIpClientAdd_Prompt_USERNAME"), CmdEvalNotEmpty, ((void*)0)},
  {"PASSWORD", CmdPrompt, _UU("CMD_EtherIpClientAdd_Prompt_PASSWORD"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.Id, sizeof(t.Id), GetParamStr(o, "[ID]"));
 StrCpy(t.HubName, sizeof(t.HubName), GetParamStr(o, "HUB"));
 StrCpy(t.UserName, sizeof(t.UserName), GetParamStr(o, "USERNAME"));
 StrCpy(t.Password, sizeof(t.Password), GetParamStr(o, "PASSWORD"));


 ret = ScAddEtherIpId(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
