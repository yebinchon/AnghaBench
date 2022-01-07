
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int OpenVPNPortList; int EnableOpenVPN; } ;
struct TYPE_9__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_8__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ PARAM ;
typedef TYPE_3__ OPENVPN_SSTP_CONFIG ;
typedef int LIST ;
typedef int CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int GetParamYes (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_2__*,int) ;
 scalar_t__ ScGetOpenVpnSstpConfig (int ,TYPE_3__*) ;
 scalar_t__ ScSetOpenVpnSstpConfig (int ,TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PsOpenVpnEnable(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 OPENVPN_SSTP_CONFIG t;

 PARAM args[] =
 {

  {"[yes|no]", CmdPrompt, _UU("CMD_OpenVpnEnable_Prompt_[yes|no]"), CmdEvalNotEmpty, ((void*)0)},
  {"PORTS", CmdPrompt, _UU("CMD_OpenVpnEnable_Prompt_PORTS"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetOpenVpnSstpConfig(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 t.EnableOpenVPN = GetParamYes(o, "[yes|no]");
 StrCpy(t.OpenVPNPortList, sizeof(t.OpenVPNPortList), GetParamStr(o, "PORTS"));


 ret = ScSetOpenVpnSstpConfig(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
