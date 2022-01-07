
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
struct TYPE_14__ {int ApplyDhcpPushRoutes; int HubName; int DhcpPushRoutes; int SaveLog; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; } ;
typedef TYPE_1__ VH_OPTION ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_17__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_16__ {char* member_0; TYPE_5__* member_4; int * member_3; int member_2; int * member_1; } ;
struct TYPE_15__ {int CapsList; int Rpc; int * HubName; } ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ CMD_EVAL_MIN_MAX ;


 int * CmdEvalIp ;
 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int * CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetCapsBool (int ,char*) ;
 int GetParamInt (int *,char*) ;
 int * GetParamStr (int *,char*) ;
 int GetParamYes (int *,char*) ;
 int IsEmptyStr (int *) ;
 int NAT_UDP_MAX_TIMEOUT ;
 int NAT_UDP_MIN_TIMEOUT ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetSecureNATOption (int ,TYPE_1__*) ;
 scalar_t__ ScSetSecureNATOption (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToIP (int *,int *) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsDhcpSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 VH_OPTION t;

 CMD_EVAL_MIN_MAX mm =
 {
  "CMD_NatSet_Eval_UDP", NAT_UDP_MIN_TIMEOUT / 1000, NAT_UDP_MAX_TIMEOUT / 1000,
 };
 PARAM args[] =
 {

  {"START", CmdPrompt, _UU("CMD_DhcpSet_Prompt_START"), CmdEvalIp, ((void*)0)},
  {"END", CmdPrompt, _UU("CMD_DhcpSet_Prompt_END"), CmdEvalIp, ((void*)0)},
  {"MASK", CmdPrompt, _UU("CMD_DhcpSet_Prompt_MASK"), CmdEvalIp, ((void*)0)},
  {"EXPIRE", CmdPrompt, _UU("CMD_DhcpSet_Prompt_EXPIRE"), CmdEvalMinMax, &mm},
  {"GW", CmdPrompt, _UU("CMD_DhcpSet_Prompt_GW"), CmdEvalIp, ((void*)0)},
  {"DNS", CmdPrompt, _UU("CMD_DhcpSet_Prompt_DNS"), CmdEvalIp, ((void*)0)},
  {"DNS2", CmdPrompt, _UU("CMD_DhcpSet_Prompt_DNS2"), CmdEvalIp, ((void*)0)},
  {"DOMAIN", CmdPrompt, _UU("CMD_DhcpSet_Prompt_DOMAIN"), ((void*)0), ((void*)0)},
  {"LOG", CmdPrompt, _UU("CMD_NatSet_Prompt_LOG"), CmdEvalNotEmpty, ((void*)0)},
  {"PUSHROUTE", ((void*)0), _UU("CMD_DhcpSet_PUSHROUTE"), ((void*)0), ((void*)0)},
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


 ret = ScGetSecureNATOption(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {

  StrToIP(&t.DhcpLeaseIPStart, GetParamStr(o, "START"));
  StrToIP(&t.DhcpLeaseIPEnd, GetParamStr(o, "END"));
  StrToIP(&t.DhcpSubnetMask, GetParamStr(o, "MASK"));
  t.DhcpExpireTimeSpan = GetParamInt(o, "EXPIRE");
  StrToIP(&t.DhcpGatewayAddress, GetParamStr(o, "GW"));
  StrToIP(&t.DhcpDnsServerAddress, GetParamStr(o, "DNS"));
  StrToIP(&t.DhcpDnsServerAddress2, GetParamStr(o, "DNS2"));
  StrCpy(t.DhcpDomainName, sizeof(t.DhcpDomainName), GetParamStr(o, "DOMAIN"));
  t.SaveLog = GetParamYes(o, "LOG");

  StrCpy(t.DhcpPushRoutes, sizeof(t.DhcpPushRoutes), GetParamStr(o, "PUSHROUTE"));
  t.ApplyDhcpPushRoutes = 1;

  StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
  ret = ScSetSecureNATOption(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  if (IsEmptyStr(GetParamStr(o, "PUSHROUTE")) == 0)
  {
   if (GetCapsBool(ps->CapsList, "b_suppport_push_route") == 0 &&
    GetCapsBool(ps->CapsList, "b_suppport_push_route_config"))
   {
    CmdPrintError(c, ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE);
   }
  }
 }

 FreeParamValueList(o);

 return 0;
}
