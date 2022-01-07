
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int (* Write ) (TYPE_4__*,int *) ;} ;
struct TYPE_15__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_14__ {int Rpc; } ;
struct TYPE_13__ {int StrValue; scalar_t__ IntValue; } ;
typedef TYPE_1__ RPC_TEST ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 scalar_t__ GetParamInt (int *,char*) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScDebug (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 int UniFormat (int *,int,int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_4__*,int *) ;
 int stub2 (TYPE_4__*,int *) ;

UINT PsDebug(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT id;

 PARAM args[] =
 {

  {"[id]", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"ARG", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 id = GetParamInt(o, "[id]");

 if (1)
 {
  RPC_TEST t;
  UINT ret;

  c->Write(c, _UU("CMD_Debug_Msg1"));

  Zero(&t, sizeof(t));

  t.IntValue = id;
  StrCpy(t.StrValue, sizeof(t.StrValue), GetParamStr(o, "ARG"));

  ret = ScDebug(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }
  else
  {
   wchar_t tmp[sizeof(t.StrValue)];

   UniFormat(tmp, sizeof(tmp), _UU("CMD_Debug_Msg2"), t.StrValue);
   c->Write(c, tmp);
  }
 }

 FreeParamValueList(o);

 return 0;
}
