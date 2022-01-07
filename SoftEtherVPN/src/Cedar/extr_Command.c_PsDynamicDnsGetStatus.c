
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Err_IPv4; scalar_t__ Err_IPv6; int CurrentIPv6; int CurrentIPv4; int DnsSuffix; int CurrentHostName; int CurrentFqdn; } ;
struct TYPE_5__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef int LIST ;
typedef TYPE_2__ DDNS_CLIENT_STATUS ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int IsEmptyStr (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScGetDDnsClientStatus (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int UniStrCpy (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int _E (scalar_t__) ;
 int _UU (char*) ;

UINT PsDynamicDnsGetStatus(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 DDNS_CLIENT_STATUS t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetDDnsClientStatus(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandard();
  wchar_t tmp[MAX_SIZE];


  if (IsEmptyStr(t.CurrentFqdn) == 0)
  {
   StrToUni(tmp, sizeof(tmp), t.CurrentFqdn);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("SM_DDNS_FQDN_EMPTY"));
  }
  CtInsert(ct, _UU("CMD_DynamicDnsGetStatus_PRINT_FQDN"), tmp);


  if (IsEmptyStr(t.CurrentHostName) == 0)
  {
   StrToUni(tmp, sizeof(tmp), t.CurrentHostName);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("SM_DDNS_FQDN_EMPTY"));
  }
  CtInsert(ct, _UU("CMD_DynamicDnsGetStatus_PRINT_HOSTNAME"), tmp);


  if (IsEmptyStr(t.DnsSuffix) == 0)
  {
   StrToUni(tmp, sizeof(tmp), t.DnsSuffix);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _UU("SM_DDNS_FQDN_EMPTY"));
  }
  CtInsert(ct, _UU("CMD_DynamicDnsGetStatus_PRINT_SUFFIX"), tmp);


  if (t.Err_IPv4 == ERR_NO_ERROR)
  {
   StrToUni(tmp, sizeof(tmp), t.CurrentIPv4);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _E(t.Err_IPv4));
  }
  CtInsert(ct, _UU("CMD_DynamicDnsGetStatus_PRINT_IPv4"), tmp);


  if (t.Err_IPv6 == ERR_NO_ERROR)
  {
   StrToUni(tmp, sizeof(tmp), t.CurrentIPv6);
  }
  else
  {
   UniStrCpy(tmp, sizeof(tmp), _E(t.Err_IPv6));
  }
  CtInsert(ct, _UU("CMD_DynamicDnsGetStatus_PRINT_IPv6"), tmp);

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
