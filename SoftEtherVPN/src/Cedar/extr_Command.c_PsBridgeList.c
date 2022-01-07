
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int nic ;
typedef int hub ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_7__ {scalar_t__ Active; scalar_t__ Online; int HubName; int DeviceName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef TYPE_2__ RPC_ENUM_LOCALBRIDGE ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumLocalBridge (TYPE_2__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumLocalBridge (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PsBridgeList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_LOCALBRIDGE t;
 UINT i;
 CT *ct;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumLocalBridge(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();

 CtInsertColumn(ct, _UU("SM_BRIDGE_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("SM_BRIDGE_COLUMN_2"), 0);
 CtInsertColumn(ct, _UU("SM_BRIDGE_COLUMN_3"), 0);
 CtInsertColumn(ct, _UU("SM_BRIDGE_COLUMN_4"), 0);

 for (i = 0;i < t.NumItem;i++)
 {
  RPC_LOCALBRIDGE *e = &t.Items[i];
  wchar_t name[MAX_SIZE];
  wchar_t nic[MAX_SIZE];
  wchar_t hub[MAX_SIZE];
  wchar_t *status = _UU("SM_BRIDGE_OFFLINE");

  UniToStru(name, i + 1);
  StrToUni(nic, sizeof(nic), e->DeviceName);
  StrToUni(hub, sizeof(hub), e->HubName);

  if (e->Online)
  {
   status = e->Active ? _UU("SM_BRIDGE_ONLINE") : _UU("SM_BRIDGE_ERROR");
  }

  CtInsert(ct, name, hub, nic, status);
 }

 CtFree(ct, c);

 FreeRpcEnumLocalBridge(&t);

 FreeParamValueList(o);

 return 0;
}
