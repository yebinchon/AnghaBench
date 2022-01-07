
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int Rpc; } ;
struct TYPE_6__ {scalar_t__ Weight; scalar_t__ ServerType; scalar_t__ NumPort; int ControllerPort; int ControllerName; int * Ports; int PublicIp; scalar_t__ ControllerOnly; } ;
typedef TYPE_1__ RPC_FARM ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,scalar_t__*,scalar_t__*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ FARM_DEFAULT_WEIGHT ;
 int FreeParamValueList (int *) ;
 int FreeRpcFarm (TYPE_1__*) ;
 scalar_t__* GetServerTypeStr (scalar_t__) ;
 int IPToUniStr32 (scalar_t__*,int,int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,scalar_t__*,int *,int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 scalar_t__ ScGetFarmSetting (int ,TYPE_1__*) ;
 scalar_t__ UniEndWith (scalar_t__*,char*) ;
 int UniFormat (scalar_t__*,int,char*,int ,...) ;
 int UniStrCat (scalar_t__*,int,scalar_t__*) ;
 int UniStrCpy (scalar_t__*,int,scalar_t__*) ;
 int UniStrLen (scalar_t__*) ;
 int UniToStru (scalar_t__*,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 scalar_t__* _UU (char*) ;

UINT PsClusterSettingGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret;
 RPC_FARM t;
 CT *ct;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 ret = ScGetFarmSetting(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 if (t.Weight == 0)
 {
  t.Weight = FARM_DEFAULT_WEIGHT;
 }


 ct = CtNewStandard();

 CtInsert(ct, _UU("CMD_ClusterSettingGet_Current"),
  GetServerTypeStr(t.ServerType));

 if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  CtInsert(ct, _UU("CMD_ClusterSettingGet_ControllerOnly"), t.ControllerOnly ? _UU("SEC_YES") : _UU("SEC_NO"));
 }

 if (t.ServerType != SERVER_TYPE_STANDALONE)
 {
  wchar_t tmp[MAX_SIZE];

  UniToStru(tmp, t.Weight);

  CtInsert(ct, _UU("CMD_ClusterSettingGet_Weight"), tmp);
 }

 if (t.ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  wchar_t tmp[MAX_SIZE];
  UINT i;


  if (t.PublicIp != 0)
  {
   IPToUniStr32(tmp, sizeof(tmp), t.PublicIp);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("CMD_ClusterSettingGet_None"));
  }

  CtInsert(ct, _UU("CMD_ClusterSettingGet_PublicIp"), tmp);


  tmp[0] = 0;
  for (i = 0;i < t.NumPort;i++)
  {
   wchar_t tmp2[64];

   UniFormat(tmp2, sizeof(tmp2), L"%u, ", t.Ports[i]);

   UniStrCat(tmp, sizeof(tmp), tmp2);
  }

  if (UniEndWith(tmp, L", "))
  {
   tmp[UniStrLen(tmp) - 2] = 0;
  }

  CtInsert(ct, _UU("CMD_ClusterSettingGet_PublicPorts"), tmp);


  UniFormat(tmp, sizeof(tmp), L"%S:%u", t.ControllerName, t.ControllerPort);
  CtInsert(ct, _UU("CMD_ClusterSettingGet_Controller"), tmp);
 }

 CtFree(ct, c);

 FreeRpcFarm(&t);
 FreeParamValueList(o);

 return 0;
}
