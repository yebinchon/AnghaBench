
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int str ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int Rpc; } ;
struct TYPE_5__ {int Online; int NumFailed; int NumConnected; int NumTry; int CurrentConnectedTime; int FirstConnectedTime; int StartedTime; int LastError; int Port; int Ip; } ;
typedef TYPE_1__ RPC_FARM_CONNECTION_STATUS ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int IPToStr32 (char*,int,int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScGetFarmConnectionStatus (int ,TYPE_1__*) ;
 int StrToUni (int *,int,char*) ;
 int SystemToLocal64 (int ) ;
 int UniFormat (int *,int,int *,int ,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _E (int ) ;
 int * _UU (char*) ;

UINT PsClusterConnectionStatusGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_FARM_CONNECTION_STATUS t;
 wchar_t tmp[MAX_SIZE];

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetFarmConnectionStatus(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandard();
  char str[MAX_SIZE];

  if (t.Online == 0)
  {
   CtInsert(ct, _UU("SM_FC_IP"), _UU("SM_FC_NOT_CONNECTED"));

   CtInsert(ct, _UU("SM_FC_PORT"), _UU("SM_FC_NOT_CONNECTED"));
  }
  else
  {
   IPToStr32(str, sizeof(str), t.Ip);
   StrToUni(tmp, sizeof(tmp), str);
   CtInsert(ct, _UU("SM_FC_IP"), tmp);

   UniToStru(tmp, t.Port);
   CtInsert(ct, _UU("SM_FC_PORT"), tmp);
  }

  CtInsert(ct,
   _UU("SM_FC_STATUS"),
   t.Online ? _UU("SM_FC_ONLINE") : _UU("SM_FC_OFFLINE"));

  if (t.Online == 0)
  {
   UniFormat(tmp, sizeof(tmp), _UU("SM_FC_ERROR_TAG"), _E(t.LastError), t.LastError);
   CtInsert(ct,
    _UU("SM_FC_LAST_ERROR"), tmp);
  }

  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.StartedTime), ((void*)0));
  CtInsert(ct, _UU("SM_FC_START_TIME"), tmp);

  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.FirstConnectedTime), ((void*)0));
  CtInsert(ct, _UU("SM_FC_FIRST_TIME"), tmp);


  {
   GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.CurrentConnectedTime), ((void*)0));
   CtInsert(ct, _UU("SM_FC_CURRENT_TIME"), tmp);
  }

  UniToStru(tmp, t.NumTry);
  CtInsert(ct, _UU("SM_FC_NUM_TRY"), tmp);

  UniToStru(tmp, t.NumConnected);
  CtInsert(ct, _UU("SM_FC_NUM_CONNECTED"), tmp);

  UniToStru(tmp, t.NumFailed);
  CtInsert(ct, _UU("SM_FC_NUM_FAILED"), tmp);

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
