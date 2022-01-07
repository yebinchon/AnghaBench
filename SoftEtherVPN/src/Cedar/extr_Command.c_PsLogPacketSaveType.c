
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int (* Write ) (TYPE_5__*,int ) ;} ;
struct TYPE_18__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int Rpc; int * HubName; } ;
struct TYPE_15__ {scalar_t__* PacketLogConfig; } ;
struct TYPE_16__ {TYPE_1__ LogSetting; int HubName; } ;
typedef TYPE_2__ RPC_HUB_LOG ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;


 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 scalar_t__ INFINITE ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 scalar_t__ ScGetHubLog (int ,TYPE_2__*) ;
 scalar_t__ ScSetHubLog (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrToPacketLogSaveInfoType (int ) ;
 scalar_t__ StrToPacketLogType (int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;
 int stub2 (TYPE_5__*,int ) ;

UINT PsLogPacketSaveType(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_HUB_LOG t;
 UINT packet_type = INFINITE;
 UINT packet_save_info_type = INFINITE;

 PARAM args[] =
 {
  {"TYPE", CmdPrompt, _UU("CMD_LogPacketSaveType_Prompt_TYPE"), ((void*)0), ((void*)0)},
  {"SAVE", CmdPrompt, _UU("CMD_LogPacketSaveType_Prompt_SAVE"), ((void*)0), ((void*)0)},
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

 packet_type = StrToPacketLogType(GetParamStr(o, "TYPE"));
 packet_save_info_type = StrToPacketLogSaveInfoType(GetParamStr(o, "SAVE"));

 if (packet_type == INFINITE || packet_save_info_type == INFINITE)
 {
  c->Write(c, _UU("CMD_LogEnable_Prompt_Error"));
  FreeParamValueList(o);
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScGetHubLog(ps->Rpc, &t);
 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 t.LogSetting.PacketLogConfig[packet_type] = packet_save_info_type;


 ret = ScSetHubLog(ps->Rpc, &t);
 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
