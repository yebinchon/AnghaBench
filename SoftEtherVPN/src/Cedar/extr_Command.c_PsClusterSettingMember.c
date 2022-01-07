
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
struct TYPE_10__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {int NumPort; scalar_t__ Weight; scalar_t__* Ports; int ServerType; int PublicIp; int MemberPassword; scalar_t__ ControllerPort; int ControllerName; } ;
typedef TYPE_1__ RPC_FARM ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 int * CmdEvalHostAndPort ;
 int * CmdEvalIp ;
 int * CmdEvalPortList ;
 int CmdPrintError (int *,scalar_t__) ;
 int * CmdPrompt ;
 int * CmdPromptChoosePassword ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ FARM_DEFAULT_WEIGHT ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcFarm (TYPE_1__*) ;
 scalar_t__ GetParamInt (int *,char*) ;
 char* GetParamStr (int *,char*) ;
 scalar_t__ LIST_DATA (int *,scalar_t__) ;
 int LIST_NUM (int *) ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ParseHostPort (char*,char**,scalar_t__*,int ) ;
 int * PsClusterSettingMemberPromptIp ;
 int * PsClusterSettingMemberPromptPorts ;
 int ReleaseList (int *) ;
 int SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ ScSetFarmSetting (int ,TYPE_1__*) ;
 int Sha0 (int ,char*,int ) ;
 int StrCpy (int ,int,char*) ;
 int StrLen (char*) ;
 int StrToIP32 (char*) ;
 int * StrToPortList (char*) ;
 int Zero (TYPE_1__*,int) ;
 scalar_t__* ZeroMalloc (int) ;
 int * _UU (char*) ;

UINT PsClusterSettingMember(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_FARM t;
 char *host_and_port;
 char *host;
 UINT port;
 UINT weight;

 PARAM args[] =
 {

  {"[server:port]", CmdPrompt, _UU("CMD_ClusterSettingMember_Prompt_HOST_1"), CmdEvalHostAndPort, ((void*)0)},
  {"IP", PsClusterSettingMemberPromptIp, ((void*)0), CmdEvalIp, ((void*)0)},
  {"PORTS", PsClusterSettingMemberPromptPorts, ((void*)0), CmdEvalPortList, ((void*)0)},
  {"PASSWORD", CmdPromptChoosePassword, ((void*)0), ((void*)0), ((void*)0)},
  {"WEIGHT", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 weight = GetParamInt(o, "WEIGHT");

 if (weight == 0)
 {
  weight = FARM_DEFAULT_WEIGHT;
 }

 Zero(&t, sizeof(t));
 host_and_port = GetParamStr(o, "[server:port]");
 if (ParseHostPort(host_and_port, &host, &port, 0))
 {
  char *pw;
  char *ports_str;
  LIST *ports;
  UINT i;

  StrCpy(t.ControllerName, sizeof(t.ControllerName), host);
  t.ControllerPort = port;
  Free(host);

  pw = GetParamStr(o, "PASSWORD");

  Sha0(t.MemberPassword, pw, StrLen(pw));
  t.PublicIp = StrToIP32(GetParamStr(o, "IP"));
  t.ServerType = SERVER_TYPE_FARM_MEMBER;

  ports_str = GetParamStr(o, "PORTS");

  ports = StrToPortList(ports_str);

  t.NumPort = LIST_NUM(ports);
  t.Ports = ZeroMalloc(sizeof(UINT) * t.NumPort);

  for (i = 0;i < t.NumPort;i++)
  {
   t.Ports[i] = (UINT)LIST_DATA(ports, i);
  }

  t.Weight = weight;

  ReleaseList(ports);


  ret = ScSetFarmSetting(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  FreeRpcFarm(&t);
 }

 FreeParamValueList(o);

 return 0;
}
