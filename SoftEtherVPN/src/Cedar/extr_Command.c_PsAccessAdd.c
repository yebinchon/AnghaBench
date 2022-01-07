
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int Active; int Discard; int Established; int CheckTcpState; int DestPortEnd; int DestPortStart; int SrcPortEnd; int SrcPortStart; int Protocol; int DestSubnetMask; int DestIpAddress; int SrcSubnetMask; int SrcIpAddress; int DstMacMask; int DstMacAddress; int CheckDstMac; int SrcMacMask; int SrcMacAddress; int CheckSrcMac; int DestUsername; int SrcUsername; int Priority; int Note; } ;
struct TYPE_18__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_17__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_16__ {char* member_0; TYPE_5__* member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_15__ {int Rpc; int * HubName; } ;
struct TYPE_14__ {int HubName; TYPE_6__ Access; } ;
typedef TYPE_1__ RPC_ADD_ACCESS ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ CMD_EVAL_MIN_MAX ;
typedef TYPE_6__ ACCESS ;


 int * CmdEvalIpAndMask4 ;
 int * CmdEvalMacAddressAndMask ;
 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int * CmdEvalPortRange ;
 int * CmdEvalProtocol ;
 int * CmdEvalTcpState ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamInt (int *,char*) ;
 int * GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 int ParseIpAndMask4 (int *,int *,int *) ;
 int ParseMacAddressAndMask (int *,int *,int ,int ) ;
 int ParsePortRange (int *,int *,int *) ;
 int ParseTcpState (int *,int *,int *) ;
 scalar_t__ ScAddAccess (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrToPassOrDiscard (int *) ;
 int StrToProtocol (int *) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsAccessAdd(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ADD_ACCESS t;
 ACCESS *a;

 CMD_EVAL_MIN_MAX minmax =
 {
  "CMD_AccessAdd_Eval_PRIORITY", 1, 4294967295UL,
 };
 PARAM args[] =
 {

  {"[pass|discard]", CmdPrompt, _UU("CMD_AccessAdd_Prompt_TYPE"), CmdEvalNotEmpty, ((void*)0)},
  {"MEMO", CmdPrompt, _UU("CMD_AccessAdd_Prompt_MEMO"), ((void*)0), ((void*)0)},
  {"PRIORITY", CmdPrompt, _UU("CMD_AccessAdd_Prompt_PRIORITY"), CmdEvalMinMax, &minmax},
  {"SRCUSERNAME", CmdPrompt, _UU("CMD_AccessAdd_Prompt_SRCUSERNAME"), ((void*)0), ((void*)0)},
  {"DESTUSERNAME", CmdPrompt, _UU("CMD_AccessAdd_Prompt_DESTUSERNAME"), ((void*)0), ((void*)0)},
  {"SRCMAC", CmdPrompt, _UU("CMD_AccessAdd_Prompt_SRCMAC"), CmdEvalMacAddressAndMask, ((void*)0)},
  {"DESTMAC", CmdPrompt, _UU("CMD_AccessAdd_Prompt_DESTMAC"), CmdEvalMacAddressAndMask, ((void*)0)},
  {"SRCIP", CmdPrompt, _UU("CMD_AccessAdd_Prompt_SRCIP"), CmdEvalIpAndMask4, ((void*)0)},
  {"DESTIP", CmdPrompt, _UU("CMD_AccessAdd_Prompt_DESTIP"), CmdEvalIpAndMask4, ((void*)0)},
  {"PROTOCOL", CmdPrompt, _UU("CMD_AccessAdd_Prompt_PROTOCOL"), CmdEvalProtocol, ((void*)0)},
  {"SRCPORT", CmdPrompt, _UU("CMD_AccessAdd_Prompt_SRCPORT"), CmdEvalPortRange, ((void*)0)},
  {"DESTPORT", CmdPrompt, _UU("CMD_AccessAdd_Prompt_DESTPORT"), CmdEvalPortRange, ((void*)0)},
  {"TCPSTATE", CmdPrompt, _UU("CMD_AccessAdd_Prompt_TCPSTATE"), CmdEvalTcpState, ((void*)0)},
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
 a = &t.Access;

 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 UniStrCpy(a->Note, sizeof(a->Note), GetParamUniStr(o, "MEMO"));
 a->Active = 1;
 a->Priority = GetParamInt(o, "PRIORITY");
 a->Discard = StrToPassOrDiscard(GetParamStr(o, "[pass|discard]")) ? 0 : 1;
 StrCpy(a->SrcUsername, sizeof(a->SrcUsername), GetParamStr(o, "SRCUSERNAME"));
 StrCpy(a->DestUsername, sizeof(a->DestUsername), GetParamStr(o, "DESTUSERNAME"));
 ParseMacAddressAndMask(GetParamStr(o, "SRCMAC"), &a->CheckSrcMac, a->SrcMacAddress, a->SrcMacMask);
 ParseMacAddressAndMask(GetParamStr(o, "DESTMAC"), &a->CheckDstMac, a->DstMacAddress, a->DstMacMask);
 ParseIpAndMask4(GetParamStr(o, "SRCIP"), &a->SrcIpAddress, &a->SrcSubnetMask);
 ParseIpAndMask4(GetParamStr(o, "DESTIP"), &a->DestIpAddress, &a->DestSubnetMask);
 a->Protocol = StrToProtocol(GetParamStr(o, "PROTOCOL"));
 ParsePortRange(GetParamStr(o, "SRCPORT"), &a->SrcPortStart, &a->SrcPortEnd);
 ParsePortRange(GetParamStr(o, "DESTPORT"), &a->DestPortStart, &a->DestPortEnd);
 ParseTcpState(GetParamStr(o, "TCPSTATE"), &a->CheckTcpState, &a->Established);


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
