
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
typedef int name ;
typedef int datetime ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {scalar_t__ NumConnection; TYPE_1__* Connections; } ;
struct TYPE_7__ {int Type; int ConnectedTime; int Port; int Hostname; int Name; } ;
typedef TYPE_1__ RPC_ENUM_CONNECTION_ITEM ;
typedef TYPE_2__ RPC_ENUM_CONNECTION ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *,int *,int ) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumConnection (TYPE_2__*) ;
 int GetConnectionTypeStr (int ) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumConnection (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int SystemToLocal64 (int ) ;
 int UniFormat (int *,int,int ,int ,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PsConnectionList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_CONNECTION t;
 UINT i;
 CT *ct;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumConnection(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();
 CtInsertColumn(ct, _UU("SM_CONN_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("SM_CONN_COLUMN_2"), 0);
 CtInsertColumn(ct, _UU("SM_CONN_COLUMN_3"), 0);
 CtInsertColumn(ct, _UU("SM_CONN_COLUMN_4"), 0);

 for (i = 0;i < t.NumConnection;i++)
 {
  wchar_t tmp[MAX_SIZE];
  wchar_t name[MAX_SIZE];
  wchar_t datetime[MAX_SIZE];
  RPC_ENUM_CONNECTION_ITEM *e = &t.Connections[i];

  StrToUni(name, sizeof(name), e->Name);
  UniFormat(tmp, sizeof(tmp), _UU("SM_HOSTNAME_AND_PORT"), e->Hostname, e->Port);
  GetDateTimeStrEx64(datetime, sizeof(datetime), SystemToLocal64(e->ConnectedTime), ((void*)0));

  CtInsert(ct, name, tmp, datetime,
   GetConnectionTypeStr(e->Type));
 }

 CtFree(ct, c);

 FreeRpcEnumConnection(&t);

 FreeParamValueList(o);

 return 0;
}
