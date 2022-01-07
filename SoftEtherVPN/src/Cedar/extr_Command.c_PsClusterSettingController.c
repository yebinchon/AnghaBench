
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {int ControllerOnly; scalar_t__ Weight; int ServerType; } ;
typedef TYPE_1__ RPC_FARM ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ FARM_DEFAULT_WEIGHT ;
 int FreeParamValueList (int *) ;
 scalar_t__ GetParamInt (int *,char*) ;
 int GetParamYes (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 int SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ ScSetFarmSetting (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

UINT PsClusterSettingController(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_FARM t;
 UINT weight;
 PARAM args[] =
 {
  {"WEIGHT", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"ONLY", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 weight = GetParamInt(o, "WEIGHT");
 if (weight == 0)
 {
  weight = FARM_DEFAULT_WEIGHT;
 }

 Zero(&t, sizeof(t));
 t.ServerType = SERVER_TYPE_FARM_CONTROLLER;
 t.Weight = weight;
 t.ControllerOnly = GetParamYes(o, "ONLY");


 ret = ScSetFarmSetting(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
