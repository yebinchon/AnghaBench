
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
typedef int vv ;
typedef int tmp2 ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_6__ {scalar_t__ TotalMemory; scalar_t__ UsedMemory; scalar_t__ FreeMemory; scalar_t__ TotalPhys; scalar_t__ UsedPhys; scalar_t__ FreePhys; } ;
struct TYPE_7__ {scalar_t__ ServerType; char* CurrentTick; TYPE_1__ MemInfo; int CurrentTime; int StartTime; int Traffic; int AssignedBridgeLicensesTotal; int AssignedClientLicensesTotal; int AssignedBridgeLicenses; int AssignedClientLicenses; int NumGroups; int NumUsers; int NumIpTables; int NumMacTables; int NumSessionsRemote; int NumSessionsLocal; int NumSessionsTotal; int NumHubDynamic; int NumHubStatic; int NumHubTotal; int NumTcpConnectionsRemote; int NumTcpConnectionsLocal; int NumTcpConnections; } ;
typedef TYPE_2__ RPC_SERVER_STATUS ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdInsertTrafficInfo (int *,int *) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,char*,char*) ;
 int CtInsertColumn (int *,char*,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetDateTimeStrEx64 (char*,int,int ,int *) ;
 int GetDateTimeStrMilli64 (char*,int,int ) ;
 int MAX_PATH ;
 int * ParseCommandList (int *,char*,char*,int *,int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 scalar_t__ ScGetServerStatus (int ,TYPE_2__*) ;
 int StrToUni (char*,int,char*) ;
 int SystemToLocal64 (int ) ;
 int ToStr3 (char*,int,scalar_t__) ;
 int UniFormat (char*,int,char*,char*) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;

UINT PsServerStatusGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret;
 RPC_SERVER_STATUS t;
 wchar_t tmp[MAX_PATH];
 char tmp2[MAX_PATH];
 CT *ct;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 ret = ScGetServerStatus(ps->Rpc, &t);
 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();

 CtInsertColumn(ct, _UU("SM_STATUS_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("SM_STATUS_COLUMN_2"), 0);


 CtInsert(ct, _UU("SM_ST_SERVER_TYPE"),
  t.ServerType == SERVER_TYPE_STANDALONE ? _UU("SM_SERVER_STANDALONE") :
  t.ServerType == SERVER_TYPE_FARM_MEMBER ? _UU("SM_FARM_MEMBER") : _UU("SM_FARM_CONTROLLER"));


 UniToStru(tmp, t.NumTcpConnections);
 CtInsert(ct, _UU("SM_ST_NUM_TCP"), tmp);

 if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {

  UniToStru(tmp, t.NumTcpConnectionsLocal);
  CtInsert(ct, _UU("SM_ST_NUM_TCP_LOCAL"), tmp);


  UniToStru(tmp, t.NumTcpConnectionsRemote);
  CtInsert(ct, _UU("SM_ST_NUM_TCP_REMOTE"), tmp);
 }


 UniToStru(tmp, t.NumHubTotal);
 CtInsert(ct, _UU("SM_ST_NUM_HUB_TOTAL"), tmp);

 if (t.ServerType != SERVER_TYPE_STANDALONE)
 {

  UniToStru(tmp, t.NumHubStatic);
  CtInsert(ct, _UU("SM_ST_NUM_HUB_STATIC"), tmp);


  UniToStru(tmp, t.NumHubDynamic);
  CtInsert(ct, _UU("SM_ST_NUM_HUB_DYNAMIC"), tmp);
 }


 UniToStru(tmp, t.NumSessionsTotal);
 CtInsert(ct, _UU("SM_ST_NUM_SESSION_TOTAL"), tmp);

 if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {

  UniToStru(tmp, t.NumSessionsLocal);
  CtInsert(ct, _UU("SM_ST_NUM_SESSION_LOCAL"), tmp);


  UniToStru(tmp, t.NumSessionsRemote);
  CtInsert(ct, _UU("SM_ST_NUM_SESSION_REMOTE"), tmp);
 }


 UniToStru(tmp, t.NumMacTables);
 CtInsert(ct, _UU("SM_ST_NUM_MAC_TABLE"), tmp);


 UniToStru(tmp, t.NumIpTables);
 CtInsert(ct, _UU("SM_ST_NUM_IP_TABLE"), tmp);


 UniToStru(tmp, t.NumUsers);
 CtInsert(ct, _UU("SM_ST_NUM_USERS"), tmp);


 UniToStru(tmp, t.NumGroups);
 CtInsert(ct, _UU("SM_ST_NUM_GROUPS"), tmp);


 UniToStru(tmp, t.AssignedClientLicenses);
 CtInsert(ct, _UU("SM_ST_CLIENT_LICENSE"), tmp);

 UniToStru(tmp, t.AssignedBridgeLicenses);
 CtInsert(ct, _UU("SM_ST_BRIDGE_LICENSE"), tmp);

 if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  UniToStru(tmp, t.AssignedClientLicensesTotal);
  CtInsert(ct, _UU("SM_ST_CLIENT_LICENSE_EX"), tmp);

  UniToStru(tmp, t.AssignedBridgeLicensesTotal);
  CtInsert(ct, _UU("SM_ST_BRIDGE_LICENSE_EX"), tmp);
 }


 CmdInsertTrafficInfo(ct, &t.Traffic);


 GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.StartTime), ((void*)0));
 CtInsert(ct, _UU("SM_ST_START_TIME"), tmp);


 GetDateTimeStrMilli64(tmp2, sizeof(tmp2), SystemToLocal64(t.CurrentTime));
 StrToUni(tmp, sizeof(tmp), tmp2);
 CtInsert(ct, _UU("SM_ST_CURRENT_TIME"), tmp);


 UniFormat(tmp, sizeof(tmp), L"%I64u", t.CurrentTick);
 CtInsert(ct, _UU("SM_ST_CURRENT_TICK"), tmp);


 if (t.MemInfo.TotalMemory != 0)
 {
  char vv[128];

  ToStr3(vv, sizeof(vv), t.MemInfo.TotalMemory);
  UniFormat(tmp, sizeof(tmp), _UU("SM_ST_RAM_SIZE_KB"), vv);
  CtInsert(ct, _UU("SM_ST_TOTAL_MEMORY"), tmp);

  ToStr3(vv, sizeof(vv), t.MemInfo.UsedMemory);
  UniFormat(tmp, sizeof(tmp), _UU("SM_ST_RAM_SIZE_KB"), vv);
  CtInsert(ct, _UU("SM_ST_USED_MEMORY"), tmp);

  ToStr3(vv, sizeof(vv), t.MemInfo.FreeMemory);
  UniFormat(tmp, sizeof(tmp), _UU("SM_ST_RAM_SIZE_KB"), vv);
  CtInsert(ct, _UU("SM_ST_FREE_MEMORY"), tmp);

  ToStr3(vv, sizeof(vv), t.MemInfo.TotalPhys);
  UniFormat(tmp, sizeof(tmp), _UU("SM_ST_RAM_SIZE_KB"), vv);
  CtInsert(ct, _UU("SM_ST_TOTAL_PHYS"), tmp);

  ToStr3(vv, sizeof(vv), t.MemInfo.UsedPhys);
  UniFormat(tmp, sizeof(tmp), _UU("SM_ST_RAM_SIZE_KB"), vv);
  CtInsert(ct, _UU("SM_ST_USED_PHYS"), tmp);

  ToStr3(vv, sizeof(vv), t.MemInfo.FreePhys);
  UniFormat(tmp, sizeof(tmp), _UU("SM_ST_RAM_SIZE_KB"), vv);
  CtInsert(ct, _UU("SM_ST_FREE_PHYS"), tmp);
 }

 CtFree(ct, c);

 FreeParamValueList(o);

 return 0;
}
