
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int Rpc; } ;
struct TYPE_5__ {scalar_t__ VpnOverDnsListener; scalar_t__ VpnOverIcmpListener; } ;
typedef TYPE_1__ RPC_SPECIAL_LISTENER ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int ) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScGetSpecialListener (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PsVpnOverIcmpDnsGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_SPECIAL_LISTENER t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetSpecialListener(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_VpnOverIcmpDnsGet_PRINT_ICMP"), _UU(t.VpnOverIcmpListener ? "SEC_YES" : "SEC_NO"));
  CtInsert(ct, _UU("CMD_VpnOverIcmpDnsGet_PRINT_DNS"), _UU(t.VpnOverDnsListener ? "SEC_YES" : "SEC_NO"));

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
