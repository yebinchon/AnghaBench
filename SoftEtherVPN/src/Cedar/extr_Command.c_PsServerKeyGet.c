
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
struct TYPE_14__ {int Rpc; } ;
struct TYPE_13__ {int * Key; } ;
typedef TYPE_1__ RPC_KEY_PAIR ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcKeyPair (TYPE_1__*) ;
 int GetParamUniStr (int *,char*) ;
 int KToFileW (int *,int ,int,int *) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetServerCert (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsServerKeyGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_KEY_PAIR t;

 PARAM args[] =
 {
  {"[key]", CmdPrompt, _UU("CMD_SAVEKEYPATH"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetServerCert(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 if (t.Key != ((void*)0))
 {
  if (KToFileW(t.Key, GetParamUniStr(o, "[key]"), 1, ((void*)0)) == 0)
  {
   c->Write(c, _UU("CMD_SAVEKEY_FAILED"));
  }
 }
 else
 {
  ret = ERR_NOT_ENOUGH_RIGHT;
  CmdPrintError(c, ret);
 }

 FreeRpcKeyPair(&t);

 FreeParamValueList(o);

 return ret;
}
