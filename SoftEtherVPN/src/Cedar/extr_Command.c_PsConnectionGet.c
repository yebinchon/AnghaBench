
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {int ServerVer; int ClientVer; int ClientBuild; int ClientStr; int ServerBuild; int ServerStr; int ConnectedTime; int Port; int Hostname; int Type; int Name; } ;
typedef TYPE_1__ RPC_CONNECTION_INFO ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * GetConnectionTypeStr (int ) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int GetParamStr (int *,char*) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetConnectionInfo (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 scalar_t__ StrLen (int ) ;
 int StrToUni (int *,int,int ) ;
 int SystemToLocal64 (int ) ;
 int UniFormat (int *,int,char*,int,int) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PsConnectionGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CONNECTION_INFO t;
 CT *ct;
 wchar_t tmp[MAX_SIZE];

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_ConnectionGet_PROMPT_NAME"), CmdEvalNotEmpty, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 StrCpy(t.Name, sizeof(t.Name), GetParamStr(o, "[name]"));


 ret = ScGetConnectionInfo(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  ct = CtNewStandard();

  StrToUni(tmp, sizeof(tmp), t.Name);
  CtInsert(ct, _UU("SM_CONNINFO_NAME"), tmp);

  CtInsert(ct, _UU("SM_CONNINFO_TYPE"), GetConnectionTypeStr(t.Type));

  StrToUni(tmp, sizeof(tmp), t.Hostname);
  CtInsert(ct, _UU("SM_CONNINFO_HOSTNAME"), tmp);

  UniToStru(tmp, t.Port);
  CtInsert(ct, _UU("SM_CONNINFO_PORT"), tmp);

  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.ConnectedTime), ((void*)0));
  CtInsert(ct, _UU("SM_CONNINFO_TIME"), tmp);

  StrToUni(tmp, sizeof(tmp), t.ServerStr);
  CtInsert(ct, _UU("SM_CONNINFO_SERVER_STR"), tmp);

  UniFormat(tmp, sizeof(tmp), L"%u.%02u", t.ServerVer / 100, t.ServerVer % 100);
  CtInsert(ct, _UU("SM_CONNINFO_SERVER_VER"), tmp);

  UniToStru(tmp, t.ServerBuild);
  CtInsert(ct, _UU("SM_CONNINFO_SERVER_BUILD"), tmp);

  if (StrLen(t.ClientStr) != 0)
  {
   StrToUni(tmp, sizeof(tmp), t.ClientStr);
   CtInsert(ct, _UU("SM_CONNINFO_CLIENT_STR"), tmp);

   UniFormat(tmp, sizeof(tmp), L"%u.%02u", t.ClientVer / 100, t.ClientVer % 100);
   CtInsert(ct, _UU("SM_CONNINFO_CLIENT_VER"), tmp);

   UniToStru(tmp, t.ClientBuild);
   CtInsert(ct, _UU("SM_CONNINFO_CLIENT_BUILD"), tmp);
  }

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
