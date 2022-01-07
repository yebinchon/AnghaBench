
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t2 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {scalar_t__ IsConnected; int CurrentHostName; scalar_t__ IsEnabled; } ;
typedef TYPE_1__ RPC_AZURE_STATUS ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef TYPE_1__ DDNS_CLIENT_STATUS ;
typedef int CT ;
typedef int CONSOLE ;


 int AZURE_DOMAIN_SUFFIX ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScGetAzureStatus (int ,TYPE_1__*) ;
 scalar_t__ ScGetDDnsClientStatus (int ,TYPE_1__*) ;
 int UniFormat (int *,int,char*,int ,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;

UINT PsVpnAzureGetStatus(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_AZURE_STATUS t;
 DDNS_CLIENT_STATUS t2;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 Zero(&t2, sizeof(t2));


 ret = ScGetAzureStatus(ps->Rpc, &t);

 if (ret == ERR_NO_ERROR)
 {
  ret = ScGetDDnsClientStatus(ps->Rpc, &t2);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_VpnAzureGetStatus_PRINT_ENABLED"), _UU(t.IsEnabled ? "SEC_YES" : "SEC_NO"));

  if (t.IsEnabled)
  {
   wchar_t tmp[MAX_SIZE];

   UniFormat(tmp, sizeof(tmp), L"%S%S", t2.CurrentHostName, AZURE_DOMAIN_SUFFIX);

   CtInsert(ct, _UU("CMD_VpnAzureGetStatus_PRINT_CONNECTED"), _UU(t.IsConnected ? "SEC_YES" : "SEC_NO"));
   CtInsert(ct, _UU("CMD_VpnAzureGetStatus_PRINT_HOSTNAME"), tmp);
  }

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
