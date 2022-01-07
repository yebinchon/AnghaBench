
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
struct TYPE_6__ {int OpenVPNObfuscationMask; scalar_t__ OpenVPNObfuscation; } ;
struct TYPE_5__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ OPENVPN_SSTP_CONFIG ;
typedef int LIST ;
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
 scalar_t__ ScGetOpenVpnSstpConfig (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PsOpenVpnObfuscationGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 OPENVPN_SSTP_CONFIG t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetOpenVpnSstpConfig(ps->Rpc, &t);

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

  CtInsert(ct, _UU("CMD_OpenVpnObfuscationGet_PRINT_Enabled"), _UU(t.OpenVPNObfuscation ? "SEC_YES" : "SEC_NO"));

  StrToUni(tmp, sizeof(tmp), t.OpenVPNObfuscationMask);
  CtInsert(ct, _UU("CMD_OpenVpnObfuscationGet_PRINT_Mask"), tmp);

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
