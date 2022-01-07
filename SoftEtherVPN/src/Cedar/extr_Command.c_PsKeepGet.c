
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int Rpc; } ;
struct TYPE_5__ {scalar_t__ KeepConnectProtocol; scalar_t__ UseKeepConnect; int KeepConnectInterval; int KeepConnectPort; int KeepConnectHost; } ;
typedef TYPE_1__ RPC_KEEP ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,char*,int *,int ) ;
 scalar_t__ ScGetKeep (int ,TYPE_1__*) ;
 int StrToUni (char*,int,int ) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_1__*,int) ;
 char* _UU (char*) ;

UINT PsKeepGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_KEEP t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
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
 else
 {
  wchar_t tmp[MAX_SIZE];
  CT *ct = CtNewStandard();

  StrToUni(tmp, sizeof(tmp), t.KeepConnectHost);
  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_1"), tmp);

  UniToStru(tmp, t.KeepConnectPort);
  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_2"), tmp);

  UniToStru(tmp, t.KeepConnectInterval);
  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_3"), tmp);

  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_4"),
   t.KeepConnectProtocol == 0 ? L"TCP/IP" : L"UDP/IP");

  CtInsert(ct, _UU("CMD_KeepGet_COLUMN_5"),
   t.UseKeepConnect ? _UU("SM_ACCESS_ENABLE") : _UU("SM_ACCESS_DISABLE"));

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
