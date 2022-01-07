
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int Rpc; } ;
struct TYPE_6__ {scalar_t__ NumPort; int * Ports; scalar_t__* Enables; scalar_t__* Errors; } ;
typedef TYPE_1__ RPC_LISTENER_LIST ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcListenerList (TYPE_1__*) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumListener (int ,TYPE_1__*) ;
 int UniFormat (int *,int,int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;

UINT PsListenerList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret;
 RPC_LISTENER_LIST t;
 UINT i;
 CT *ct;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 ret = ScEnumListener(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();

 CtInsertColumn(ct, _UU("CM_LISTENER_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("CM_LISTENER_COLUMN_2"), 0);

 for (i = 0;i < t.NumPort;i++)
 {
  wchar_t *status = _UU("CM_LISTENER_OFFLINE");
  wchar_t tmp[128];

  if (t.Errors[i])
  {
   status = _UU("CM_LISTENER_ERROR");
  }
  else if (t.Enables[i])
  {
   status = _UU("CM_LISTENER_ONLINE");
  }

  UniFormat(tmp, sizeof(tmp), _UU("CM_LISTENER_TCP_PORT"), t.Ports[i]);

  CtInsert(ct, tmp, status);
 }

 CtFree(ct, c);

 FreeRpcListenerList(&t);

 FreeParamValueList(o);

 return 0;
}
