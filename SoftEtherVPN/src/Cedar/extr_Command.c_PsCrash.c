
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {int (* Write ) (TYPE_3__*,int ) ;} ;
struct TYPE_11__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_10__ {int Rpc; } ;
typedef int RPC_TEST ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ PARAM ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 int * ParseCommandList (TYPE_3__*,char*,int *,TYPE_2__*,int) ;
 scalar_t__ ScCrash (int ,int *) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int Zero (int *,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,int ) ;

UINT PsCrash(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 char *yes;

 PARAM args[] =
 {

  {"[yes]", CmdPrompt, _UU("CMD_Crash_Confirm"), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 yes = GetParamStr(o, "[yes]");

 if (StrCmpi(yes, "yes") != 0)
 {
  c->Write(c, _UU("CMD_Crash_Aborted"));
 }
 else
 {
  RPC_TEST t;
  UINT ret;

  c->Write(c, _UU("CMD_Crash_Msg"));

  Zero(&t, sizeof(t));

  ret = ScCrash(ps->Rpc, &t);

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
