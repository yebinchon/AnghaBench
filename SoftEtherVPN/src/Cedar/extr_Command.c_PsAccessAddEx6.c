
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int mask ;
typedef int ip ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {int IsIPv6; int Active; int Discard; int RedirectUrl; void* Loss; void* Jitter; void* Delay; int Established; int CheckTcpState; int DestPortEnd; int DestPortStart; int SrcPortEnd; int SrcPortStart; int Protocol; int DestSubnetMask6; int DestIpAddress6; int SrcSubnetMask6; int SrcIpAddress6; int DstMacMask; int DstMacAddress; int CheckDstMac; int SrcMacMask; int SrcMacAddress; int CheckSrcMac; int DestUsername; int SrcUsername; void* Priority; int Note; } ;
struct TYPE_23__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_22__ {int (* Write ) (TYPE_5__*,int *) ;} ;
struct TYPE_21__ {char* member_0; TYPE_6__* member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_20__ {int Rpc; int * HubName; int CapsList; } ;
struct TYPE_19__ {int HubName; TYPE_7__ Access; } ;
typedef TYPE_1__ RPC_ADD_ACCESS ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_1__ IP ;
typedef TYPE_5__ CONSOLE ;
typedef TYPE_6__ CMD_EVAL_MIN_MAX ;
typedef TYPE_7__ ACCESS ;


 int * CmdEvalIpAndMask6 ;
 int * CmdEvalMacAddressAndMask ;
 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int * CmdEvalPortRange ;
 int * CmdEvalProtocol ;
 int * CmdEvalTcpState ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int * CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetCapsBool (int ,char*) ;
 void* GetParamInt (int *,char*) ;
 int * GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 unsigned long HUB_ACCESSLIST_DELAY_MAX ;
 unsigned long HUB_ACCESSLIST_JITTER_MAX ;
 unsigned long HUB_ACCESSLIST_LOSS_MAX ;
 int IPToIPv6Addr (int *,TYPE_1__*) ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_3__*,int) ;
 int ParseIpAndMask6 (int *,TYPE_1__*,TYPE_1__*) ;
 int ParseMacAddressAndMask (int *,int *,int ,int ) ;
 int ParsePortRange (int *,int *,int *) ;
 int ParseTcpState (int *,int *,int *) ;
 scalar_t__ ScAddAccess (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrToPassOrDiscard (int *) ;
 int StrToProtocol (int *) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _E (scalar_t__) ;
 int * _UU (char*) ;
 int stub1 (TYPE_5__*,int *) ;
 int stub2 (TYPE_5__*,int *) ;

UINT PsAccessAddEx6(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ADD_ACCESS t;
 ACCESS *a;
 IP ip, mask;

 CMD_EVAL_MIN_MAX minmax =
 {
  "CMD_AccessAdd6_Eval_PRIORITY", 1, 4294967295UL,
 };
 CMD_EVAL_MIN_MAX minmax_delay =
 {
  "CMD_AccessAddEx6_Eval_DELAY", 0, HUB_ACCESSLIST_DELAY_MAX,
 };
 CMD_EVAL_MIN_MAX minmax_jitter =
 {
  "CMD_AccessAddEx6_Eval_JITTER", 0, HUB_ACCESSLIST_JITTER_MAX,
 };
 CMD_EVAL_MIN_MAX minmax_loss =
 {
  "CMD_AccessAddEx6_Eval_LOSS", 0, HUB_ACCESSLIST_LOSS_MAX,
 };
 PARAM args[] =
 {

  {"[pass|discard]", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_TYPE"), CmdEvalNotEmpty, ((void*)0)},
  {"MEMO", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_MEMO"), ((void*)0), ((void*)0)},
  {"PRIORITY", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_PRIORITY"), CmdEvalMinMax, &minmax},
  {"SRCUSERNAME", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_SRCUSERNAME"), ((void*)0), ((void*)0)},
  {"DESTUSERNAME", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_DESTUSERNAME"), ((void*)0), ((void*)0)},
  {"SRCMAC", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_SRCMAC"), CmdEvalMacAddressAndMask, ((void*)0)},
  {"DESTMAC", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_DESTMAC"), CmdEvalMacAddressAndMask, ((void*)0)},
  {"SRCIP", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_SRCIP"), CmdEvalIpAndMask6, ((void*)0)},
  {"DESTIP", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_DESTIP"), CmdEvalIpAndMask6, ((void*)0)},
  {"PROTOCOL", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_PROTOCOL"), CmdEvalProtocol, ((void*)0)},
  {"SRCPORT", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_SRCPORT"), CmdEvalPortRange, ((void*)0)},
  {"DESTPORT", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_DESTPORT"), CmdEvalPortRange, ((void*)0)},
  {"TCPSTATE", CmdPrompt, _UU("CMD_AccessAdd6_Prompt_TCPSTATE"), CmdEvalTcpState, ((void*)0)},
  {"DELAY", CmdPrompt, _UU("CMD_AccessAddEx6_Prompt_DELAY"), CmdEvalMinMax, &minmax_delay},
  {"JITTER", CmdPrompt, _UU("CMD_AccessAddEx6_Prompt_JITTER"), CmdEvalMinMax, &minmax_jitter},
  {"LOSS", CmdPrompt, _UU("CMD_AccessAddEx6_Prompt_LOSS"), CmdEvalMinMax, &minmax_loss},
  {"REDIRECTURL", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }


 if (GetCapsBool(ps->CapsList, "b_support_ex_acl") == 0)
 {
  c->Write(c, _E(ERR_NOT_SUPPORTED));
  return ERR_NOT_SUPPORTED;
 }

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 a = &t.Access;

 a->IsIPv6 = 1;

 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 UniStrCpy(a->Note, sizeof(a->Note), GetParamUniStr(o, "MEMO"));
 a->Active = 1;
 a->Priority = GetParamInt(o, "PRIORITY");
 a->Discard = StrToPassOrDiscard(GetParamStr(o, "[pass|discard]")) ? 0 : 1;
 StrCpy(a->SrcUsername, sizeof(a->SrcUsername), GetParamStr(o, "SRCUSERNAME"));
 StrCpy(a->DestUsername, sizeof(a->DestUsername), GetParamStr(o, "DESTUSERNAME"));
 ParseMacAddressAndMask(GetParamStr(o, "SRCMAC"), &a->CheckSrcMac, a->SrcMacAddress, a->SrcMacMask);
 ParseMacAddressAndMask(GetParamStr(o, "DESTMAC"), &a->CheckDstMac, a->DstMacAddress, a->DstMacMask);

 Zero(&ip, sizeof(ip));
 Zero(&mask, sizeof(mask));

 ParseIpAndMask6(GetParamStr(o, "SRCIP"), &ip, &mask);
 IPToIPv6Addr(&a->SrcIpAddress6, &ip);
 IPToIPv6Addr(&a->SrcSubnetMask6, &mask);

 ParseIpAndMask6(GetParamStr(o, "DESTIP"), &ip, &mask);
 IPToIPv6Addr(&a->DestIpAddress6, &ip);
 IPToIPv6Addr(&a->DestSubnetMask6, &mask);

 a->Protocol = StrToProtocol(GetParamStr(o, "PROTOCOL"));
 ParsePortRange(GetParamStr(o, "SRCPORT"), &a->SrcPortStart, &a->SrcPortEnd);
 ParsePortRange(GetParamStr(o, "DESTPORT"), &a->DestPortStart, &a->DestPortEnd);
 ParseTcpState(GetParamStr(o, "TCPSTATE"), &a->CheckTcpState, &a->Established);
 a->Delay = GetParamInt(o, "DELAY");
 a->Jitter = GetParamInt(o, "JITTER");
 a->Loss = GetParamInt(o, "LOSS");
 StrCpy(a->RedirectUrl, sizeof(a->RedirectUrl), GetParamStr(o, "REDIRECTURL"));


 ret = ScAddAccess(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
