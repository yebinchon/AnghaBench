
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_17__ {char* member_0; int member_2; int member_1; } ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_15__ {char* member_0; TYPE_5__* member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_14__ {char* HubName; int Rpc; } ;
struct TYPE_13__ {int RadiusRetryInterval; int RadiusSecret; int RadiusServerName; scalar_t__ RadiusPort; int HubName; } ;
typedef TYPE_1__ RPC_RADIUS ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ CMD_EVAL_MIN_MAX ;


 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 int CmdPromptChoosePassword ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int GetParamInt (int *,char*) ;
 char* GetParamStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ParseHostPort (char*,char**,scalar_t__*,int) ;
 int RADIUS_RETRY_INTERVAL ;
 int RADIUS_RETRY_TIMEOUT ;
 scalar_t__ ScSetHubRadius (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsRadiusServerSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_RADIUS t;
 char *host;
 UINT port;

 CMD_EVAL_MIN_MAX minmax =
 {
  "CMD_RadiusServerSet_EVAL_NUMINTERVAL", RADIUS_RETRY_INTERVAL, RADIUS_RETRY_TIMEOUT,
 };
 PARAM args[] =
 {

  {"[server_name:port]", CmdPrompt, _UU("CMD_RadiusServerSet_Prompt_Host"), CmdEvalNotEmpty, ((void*)0)},
  {"SECRET", CmdPromptChoosePassword, _UU("CMD_RadiusServerSet_Prompt_Secret"), ((void*)0), ((void*)0)},
  {"RETRY_INTERVAL", CmdPrompt, _UU("CMD_RadiusServerSet_Prompt_RetryInterval"), CmdEvalMinMax, &minmax},
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

 if (ParseHostPort(GetParamStr(o, "[server_name:port]"), &host, &port, 1812))
 {
  Zero(&t, sizeof(t));

  StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
  t.RadiusPort = port;
  StrCpy(t.RadiusServerName, sizeof(t.RadiusServerName), host);
  StrCpy(t.RadiusSecret, sizeof(t.RadiusSecret), GetParamStr(o, "SECRET"));
  t.RadiusRetryInterval = GetParamInt(o, "RETRY_INTERVAL");

  Free(host);


  ret = ScSetHubRadius(ps->Rpc, &t);

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
