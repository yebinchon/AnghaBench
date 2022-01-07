
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
struct TYPE_10__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {int KeepConnectProtocol; int KeepConnectInterval; scalar_t__ KeepConnectPort; int KeepConnectHost; } ;
typedef TYPE_1__ RPC_KEEP ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


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
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ParseHostPort (int ,char**,scalar_t__*,int ) ;
 scalar_t__ ScGetKeep (int ,TYPE_1__*) ;
 scalar_t__ ScSetKeep (int ,TYPE_1__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PsKeepSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_KEEP t;
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


 ret = ScGetKeep(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 if (ParseHostPort(GetParamStr(o, "HOST"), &host, &port, 0))
 {
  StrCpy(t.KeepConnectHost, sizeof(t.KeepConnectHost), host);
  t.KeepConnectPort = port;
  t.KeepConnectInterval = GetParamInt(o, "INTERVAL");
  t.KeepConnectProtocol = (StrCmpi(GetParamStr(o, "PROTOCOL"), "tcp") == 0) ? 0 : 1;
  Free(host);


  ret = ScSetKeep(ps->Rpc, &t);

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
