
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_8__ {scalar_t__ NumFarm; TYPE_1__* Farms; } ;
struct TYPE_7__ {scalar_t__ Controller; int Id; int AssignedBridgeLicense; int AssignedClientLicense; int NumHubs; int NumTcpConnections; int NumSessions; int Point; int Hostname; int ConnectedTime; } ;
typedef TYPE_1__ RPC_ENUM_FARM_ITEM ;
typedef TYPE_2__ RPC_ENUM_FARM ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int ,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumFarm (TYPE_2__*) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScEnumFarmMember (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int SystemToLocal64 (int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PsClusterMemberList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_FARM t;
 CT *ct;
 UINT i;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumFarmMember(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();

 CtInsertColumn(ct, _UU("CMD_ID"), 1);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_2"), 0);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_3"), 0);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_4"), 1);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_5"), 1);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_6"), 1);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_7"), 1);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_8"), 1);
 CtInsertColumn(ct, _UU("SM_FM_COLUMN_9"), 1);

 for (i = 0;i < t.NumFarm;i++)
 {
  RPC_ENUM_FARM_ITEM *e = &t.Farms[i];
  wchar_t tmp0[64];
  wchar_t tmp1[MAX_SIZE];
  wchar_t tmp2[MAX_SIZE];
  wchar_t tmp3[64];
  wchar_t tmp4[64];
  wchar_t tmp5[64];
  wchar_t tmp6[64];
  wchar_t tmp7[64];
  wchar_t tmp8[64];

  GetDateTimeStrEx64(tmp1, sizeof(tmp1), SystemToLocal64(e->ConnectedTime), ((void*)0));
  StrToUni(tmp2, sizeof(tmp2), e->Hostname);
  UniToStru(tmp3, e->Point);
  UniToStru(tmp4, e->NumSessions);
  UniToStru(tmp5, e->NumTcpConnections);
  UniToStru(tmp6, e->NumHubs);
  UniToStru(tmp7, e->AssignedClientLicense);
  UniToStru(tmp8, e->AssignedBridgeLicense);

  UniToStru(tmp0, e->Id);

  CtInsert(ct, tmp0,
   e->Controller ? _UU("SM_FM_CONTROLLER") : _UU("SM_FM_MEMBER"),
   tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8);
 }

 CtFree(ct, c);

 FreeRpcEnumFarm(&t);

 FreeParamValueList(o);

 return 0;
}
