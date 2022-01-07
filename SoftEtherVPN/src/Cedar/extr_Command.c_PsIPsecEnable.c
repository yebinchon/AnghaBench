
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
struct TYPE_9__ {int L2TP_DefaultHub; int IPsec_Secret; void* EtherIP_IPsec; void* L2TP_Raw; void* L2TP_IPsec; } ;
struct TYPE_8__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_7__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ PARAM ;
typedef int LIST ;
typedef TYPE_3__ IPSEC_SERVICES ;
typedef int CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 void* GetParamYes (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_2__*,int) ;
 scalar_t__ ScSetIPsecServices (int ,TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PsIPsecEnable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 IPSEC_SERVICES t;

 PARAM args[] =
 {

  {"L2TP", CmdPrompt, _UU("CMD_IPsecEnable_Prompt_L2TP"), CmdEvalNotEmpty, ((void*)0)},
  {"L2TPRAW", CmdPrompt, _UU("CMD_IPsecEnable_Prompt_L2TPRAW"), CmdEvalNotEmpty, ((void*)0)},
  {"ETHERIP", CmdPrompt, _UU("CMD_IPsecEnable_Prompt_ETHERIP"), CmdEvalNotEmpty, ((void*)0)},
  {"PSK", CmdPrompt, _UU("CMD_IPsecEnable_Prompt_PSK"), CmdEvalNotEmpty, ((void*)0)},
  {"DEFAULTHUB", CmdPrompt, _UU("CMD_IPsecEnable_Prompt_DEFAULTHUB"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 t.L2TP_IPsec = GetParamYes(o, "L2TP");
 t.L2TP_Raw = GetParamYes(o, "L2TPRAW");
 t.EtherIP_IPsec = GetParamYes(o, "ETHERIP");
 StrCpy(t.IPsec_Secret, sizeof(t.IPsec_Secret), GetParamStr(o, "PSK"));
 StrCpy(t.L2TP_DefaultHub, sizeof(t.L2TP_DefaultHub), GetParamStr(o, "DEFAULTHUB"));


 ret = ScSetIPsecServices(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
