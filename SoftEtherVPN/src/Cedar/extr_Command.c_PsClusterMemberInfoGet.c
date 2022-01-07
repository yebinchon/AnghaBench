
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int t ;
typedef int str ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_12__ {char* member_0; int * member_4; int * member_3; int * member_2; int member_1; } ;
struct TYPE_11__ {int Rpc; } ;
struct TYPE_10__ {char* Hostname; scalar_t__ Point; scalar_t__ Weight; scalar_t__ NumPort; scalar_t__* Ports; scalar_t__ NumFarmHub; scalar_t__ NumSessions; scalar_t__ NumTcpConnections; TYPE_1__* FarmHubs; int Ip; int ConnectedTime; scalar_t__ Controller; int Id; } ;
struct TYPE_9__ {scalar_t__ HubName; scalar_t__ DynamicHub; } ;
typedef TYPE_2__ RPC_FARM_INFO ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcFarmInfo (TYPE_2__*) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int GetParamUniStr (int *,char*) ;
 int IPToStr32 (char*,int,int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,TYPE_4__*,int) ;
 scalar_t__ ScGetFarmInfo (int ,TYPE_2__*) ;
 int StrToUni (int *,int,char*) ;
 int SystemToLocal64 (int ) ;
 int UniFormat (int *,int,int *,scalar_t__) ;
 int UniToInt (int ) ;
 int UniToStru (int *,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PsClusterMemberInfoGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_FARM_INFO t;
 CT *ct;

 PARAM args[] =
 {

  {"[id]", CmdPrompt, _UU("CMD_ClusterMemberInfoGet_PROMPT_ID"), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 t.Id = UniToInt(GetParamUniStr(o, "[id]"));


 ret = ScGetFarmInfo(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNewStandard();

 {
  wchar_t tmp[MAX_SIZE];
  char str[MAX_SIZE];
  UINT i;

  CtInsert(ct, _UU("SM_FMINFO_TYPE"),
   t.Controller ? _UU("SM_FARM_CONTROLLER") : _UU("SM_FARM_MEMBER"));

  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.ConnectedTime), ((void*)0));
  CtInsert(ct, _UU("SM_FMINFO_CONNECT_TIME"), tmp);

  IPToStr32(str, sizeof(str), t.Ip);
  StrToUni(tmp, sizeof(tmp), str);
  CtInsert(ct, _UU("SM_FMINFO_IP"), tmp);

  StrToUni(tmp, sizeof(tmp), t.Hostname);
  CtInsert(ct, _UU("SM_FMINFO_HOSTNAME"), tmp);

  UniToStru(tmp, t.Point);
  CtInsert(ct, _UU("SM_FMINFO_POINT"), tmp);

  UniToStru(tmp, t.Weight);
  CtInsert(ct, _UU("SM_FMINFO_WEIGHT"), tmp);

  UniToStru(tmp, t.NumPort);
  CtInsert(ct, _UU("SM_FMINFO_NUM_PORT"), tmp);

  for (i = 0;i < t.NumPort;i++)
  {
   wchar_t tmp2[MAX_SIZE];
   UniFormat(tmp, sizeof(tmp), _UU("SM_FMINFO_PORT"), i + 1);
   UniToStru(tmp2, t.Ports[i]);
   CtInsert(ct, tmp, tmp2);
  }

  UniToStru(tmp, t.NumFarmHub);
  CtInsert(ct, _UU("SM_FMINFO_NUM_HUB"), tmp);

  for (i = 0;i < t.NumFarmHub;i++)
  {
   wchar_t tmp2[MAX_SIZE];
   UniFormat(tmp, sizeof(tmp), _UU("SM_FMINFO_HUB"), i + 1);
   UniFormat(tmp2, sizeof(tmp2),
    t.FarmHubs[i].DynamicHub ? _UU("SM_FMINFO_HUB_TAG_2") : _UU("SM_FMINFO_HUB_TAG_1"),
    t.FarmHubs[i].HubName);
   CtInsert(ct, tmp, tmp2);
  }

  UniToStru(tmp, t.NumSessions);
  CtInsert(ct, _UU("SM_FMINFO_NUM_SESSION"), tmp);

  UniToStru(tmp, t.NumTcpConnections);
  CtInsert(ct, _UU("SM_FMINFO_NUN_CONNECTION"), tmp);
 }

 CtFree(ct, c);

 FreeRpcFarmInfo(&t);

 FreeParamValueList(o);

 return 0;
}
