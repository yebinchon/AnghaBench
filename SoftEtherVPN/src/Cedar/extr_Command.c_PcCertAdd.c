
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_14__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_13__ {int RemoteClient; } ;
struct TYPE_12__ {int * x; } ;
typedef TYPE_1__ RPC_CERT ;
typedef TYPE_2__ PC ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 scalar_t__ CcAddCa (int ,TYPE_1__*) ;
 int CmdEvalIsFile ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int * FileToXW (int ) ;
 int FreeParamValueList (int *) ;
 int FreeX (int *) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PcCertAdd(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CERT t;
 X *x;

 PARAM args[] =
 {
  {"[path]", CmdPrompt, _UU("CMD_CAAdd_PROMPT_PATH"), CmdEvalIsFile, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 x = FileToXW(GetParamUniStr(o, "[path]"));

 if (x == ((void*)0))
 {
  FreeParamValueList(o);
  c->Write(c, _UU("CMD_MSG_LOAD_CERT_FAILED"));
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 t.x = x;

 ret = CcAddCa(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 FreeX(x);


 FreeParamValueList(o);

 return ret;
}
