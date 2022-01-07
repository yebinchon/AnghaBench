
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
struct TYPE_14__ {int HubName; int SaveLog; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; } ;
typedef TYPE_1__ VH_OPTION ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_17__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_16__ {char* member_0; TYPE_5__* member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ CMD_EVAL_MIN_MAX ;


 int CmdEvalMinMax ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 void* GetParamInt (int *,char*) ;
 int GetParamYes (int *,char*) ;
 scalar_t__ IP_HEADER_SIZE ;
 scalar_t__ MAC_HEADER_SIZE ;
 int MAX_L3_DATA_SIZE ;
 int NAT_TCP_MAX_TIMEOUT ;
 int NAT_TCP_MIN_TIMEOUT ;
 int NAT_UDP_MAX_TIMEOUT ;
 int NAT_UDP_MIN_TIMEOUT ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetSecureNATOption (int ,TYPE_1__*) ;
 scalar_t__ ScSetSecureNATOption (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ TCP_HEADER_SIZE ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsNatSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 VH_OPTION t;

 CMD_EVAL_MIN_MAX mtu_mm =
 {
  "CMD_NatSet_Eval_MTU", TCP_HEADER_SIZE + IP_HEADER_SIZE + MAC_HEADER_SIZE + 8, MAX_L3_DATA_SIZE,
 };
 CMD_EVAL_MIN_MAX tcp_mm =
 {
  "CMD_NatSet_Eval_TCP", NAT_TCP_MIN_TIMEOUT / 1000, NAT_TCP_MAX_TIMEOUT / 1000,
 };
 CMD_EVAL_MIN_MAX udp_mm =
 {
  "CMD_NatSet_Eval_UDP", NAT_UDP_MIN_TIMEOUT / 1000, NAT_UDP_MAX_TIMEOUT / 1000,
 };
 PARAM args[] =
 {

  {"MTU", CmdPrompt, _UU("CMD_NatSet_Prompt_MTU"), CmdEvalMinMax, &mtu_mm},
  {"TCPTIMEOUT", CmdPrompt, _UU("CMD_NatSet_Prompt_TCPTIMEOUT"), CmdEvalMinMax, &tcp_mm},
  {"UDPTIMEOUT", CmdPrompt, _UU("CMD_NatSet_Prompt_UDPTIMEOUT"), CmdEvalMinMax, &udp_mm},
  {"LOG", CmdPrompt, _UU("CMD_NatSet_Prompt_LOG"), CmdEvalNotEmpty, ((void*)0)},
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
  t.Mtu = GetParamInt(o, "MTU");
  t.NatTcpTimeout = GetParamInt(o, "TCPTIMEOUT");
  t.NatUdpTimeout = GetParamInt(o, "UDPTIMEOUT");
  t.SaveLog = GetParamYes(o, "LOG");

  StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
  ret = ScSetSecureNATOption(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }
 }

 FreeParamValueList(o);

 return 0;
}
