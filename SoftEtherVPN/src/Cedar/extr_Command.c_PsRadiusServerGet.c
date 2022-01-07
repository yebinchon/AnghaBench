
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_12__ {int Rpc; int * HubName; } ;
struct TYPE_11__ {int RadiusRetryInterval; int RadiusSecret; int RadiusPort; int RadiusServerName; int HubName; } ;
typedef TYPE_1__ RPC_RADIUS ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_3__ CONSOLE ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int CtFree (int *,TYPE_3__*) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 scalar_t__ IsEmptyStr (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetHubRadius (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,int ) ;
 int UniToStri (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PsRadiusServerGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_RADIUS t;


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScGetHubRadius(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct;
  wchar_t tmp[MAX_SIZE];

  ct = CtNewStandard();

  if (IsEmptyStr(t.RadiusServerName))
  {
   CtInsert(ct, _UU("CMD_RadiusServerGet_STATUS"), _UU("CMD_MSG_DISABLE"));
  }
  else
  {
   CtInsert(ct, _UU("CMD_RadiusServerGet_STATUS"), _UU("CMD_MSG_ENABLE"));

   StrToUni(tmp, sizeof(tmp), t.RadiusServerName);
   CtInsert(ct, _UU("CMD_RadiusServerGet_HOST"), tmp);

   UniToStri(tmp, t.RadiusPort);
   CtInsert(ct, _UU("CMD_RadiusServerGet_PORT"), tmp);

   StrToUni(tmp, sizeof(tmp), t.RadiusSecret);
   CtInsert(ct, _UU("CMD_RadiusServerGet_SECRET"), tmp);

   UniToStri(tmp, t.RadiusRetryInterval);
   CtInsert(ct, _UU("CMD_RadiusServerGet_RetryInterval"), tmp);
  }

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
