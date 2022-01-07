
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_15__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_14__ {int RemoteClient; } ;
struct TYPE_13__ {int x; int Key; } ;
typedef TYPE_1__ RPC_GET_CA ;
typedef TYPE_2__ PC ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 scalar_t__ CcGetCa (int ,TYPE_1__*) ;
 int CiFreeGetCa (TYPE_1__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamInt (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ XToFileW (int ,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PcCertGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_GET_CA t;

 PARAM args[] =
 {
  {"[id]", CmdPrompt, _UU("CMD_CAGet_PROMPT_ID"), CmdEvalNotEmpty, ((void*)0)},
  {"SAVECERT", CmdPrompt, _UU("CMD_CAGet_PROMPT_SAVECERT"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 t.Key = GetParamInt(o, "[id]");

 ret = CcGetCa(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

  if (XToFileW(t.x, GetParamUniStr(o, "SAVECERT"), 1))
  {

  }
  else
  {

   ret = ERR_INTERNAL_ERROR;
   c->Write(c, _UU("CMD_MSG_SAVE_CERT_FAILED"));
  }

  CiFreeGetCa(&t);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
