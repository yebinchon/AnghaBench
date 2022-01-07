
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
struct TYPE_6__ {int L2TP_DefaultHub; int IPsec_Secret; scalar_t__ EtherIP_IPsec; scalar_t__ L2TP_Raw; scalar_t__ L2TP_IPsec; } ;
struct TYPE_5__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef int LIST ;
typedef TYPE_2__ IPSEC_SERVICES ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_PATH ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScGetIPsecServices (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PsIPsecGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 IPSEC_SERVICES t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetIPsecServices(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t tmp[MAX_PATH];
  CT *ct = CtNewStandard();

  CtInsert(ct, _UU("CMD_IPsecGet_PRINT_L2TP"), _UU(t.L2TP_IPsec ? "SEC_YES" : "SEC_NO"));
  CtInsert(ct, _UU("CMD_IPsecGet_PRINT_L2TPRAW"), _UU(t.L2TP_Raw ? "SEC_YES" : "SEC_NO"));
  CtInsert(ct, _UU("CMD_IPsecGet_PRINT_ETHERIP"), _UU(t.EtherIP_IPsec ? "SEC_YES" : "SEC_NO"));

  StrToUni(tmp, sizeof(tmp), t.IPsec_Secret);
  CtInsert(ct, _UU("CMD_IPsecGet_PRINT_PSK"), tmp);

  StrToUni(tmp, sizeof(tmp), t.L2TP_DefaultHub);
  CtInsert(ct, _UU("CMD_IPsecGet_PRINT_DEFAULTHUB"), tmp);

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
