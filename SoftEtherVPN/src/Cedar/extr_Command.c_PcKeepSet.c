
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
struct TYPE_10__ {int KeepConnectProtocol; int KeepConnectInterval; scalar_t__ KeepConnectPort; int KeepConnectHost; } ;
struct TYPE_9__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_8__ {int RemoteClient; } ;
typedef TYPE_1__ PC ;
typedef TYPE_2__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;
typedef TYPE_3__ CLIENT_CONFIG ;


 scalar_t__ CcGetClientConfig (int ,TYPE_3__*) ;
 scalar_t__ CcSetClientConfig (int ,TYPE_3__*) ;
 int * CmdEvalHostAndPort ;
 int * CmdEvalTcpOrUdp ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int GetParamInt (int *,char*) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_2__*,int) ;
 scalar_t__ ParseHostPort (int ,char**,scalar_t__*,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PcKeepSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 CLIENT_CONFIG t;
 char *host;
 UINT port;

 PARAM args[] =
 {

  {"HOST", CmdPrompt, _UU("CMD_KeepSet_PROMPT_HOST"), CmdEvalHostAndPort, ((void*)0)},
  {"PROTOCOL", CmdPrompt, _UU("CMD_KeepSet_PROMPT_PROTOCOL"), CmdEvalTcpOrUdp, ((void*)0)},
  {"INTERVAL", CmdPrompt, _UU("CMD_KeepSet_PROMPT_INTERVAL"), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcGetClientConfig(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  if (ParseHostPort(GetParamStr(o, "HOST"), &host, &port, 0))
  {
   StrCpy(t.KeepConnectHost, sizeof(t.KeepConnectHost), host);
   t.KeepConnectPort = port;
   t.KeepConnectInterval = GetParamInt(o, "INTERVAL");
   t.KeepConnectProtocol = (StrCmpi(GetParamStr(o, "PROTOCOL"), "tcp") == 0) ? 0 : 1;
   Free(host);

   ret = CcSetClientConfig(pc->RemoteClient, &t);
  }
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
