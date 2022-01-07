
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
struct TYPE_11__ {int DhcpPushRoutes; scalar_t__ ApplyDhcpPushRoutes; scalar_t__ SaveLog; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; scalar_t__ UseDhcp; int HubName; } ;
typedef TYPE_1__ VH_OPTION ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_12__ {int Rpc; int * HubName; } ;
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
 scalar_t__ IPToUINT (int *) ;
 int IPToUniStr (int *,int,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetSecureNATOption (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,int ) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PsDhcpGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 VH_OPTION t;


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


 ret = ScGetSecureNATOption(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t tmp[MAX_SIZE];
  CT *ct = CtNewStandard();


  CtInsert(ct, _UU("CMD_DhcpGet_Column_USE"), t.UseDhcp ? _UU("SEC_YES") : _UU("SEC_NO"));


  IPToUniStr(tmp, sizeof(tmp), &t.DhcpLeaseIPStart);
  CtInsert(ct, _UU("CMD_DhcpGet_Column_IP1"), tmp);


  IPToUniStr(tmp, sizeof(tmp), &t.DhcpLeaseIPEnd);
  CtInsert(ct, _UU("CMD_DhcpGet_Column_IP2"), tmp);


  IPToUniStr(tmp, sizeof(tmp), &t.DhcpSubnetMask);
  CtInsert(ct, _UU("CMD_DhcpGet_Column_MASK"), tmp);


  UniToStru(tmp, t.DhcpExpireTimeSpan);
  CtInsert(ct, _UU("CMD_DhcpGet_Column_LEASE"), tmp);


  UniStrCpy(tmp, sizeof(tmp), _UU("SEC_NONE"));
  if (IPToUINT(&t.DhcpGatewayAddress) != 0)
  {
   IPToUniStr(tmp, sizeof(tmp), &t.DhcpGatewayAddress);
  }
  CtInsert(ct, _UU("CMD_DhcpGet_Column_GW"), tmp);


  UniStrCpy(tmp, sizeof(tmp), _UU("SEC_NONE"));
  if (IPToUINT(&t.DhcpDnsServerAddress) != 0)
  {
   IPToUniStr(tmp, sizeof(tmp), &t.DhcpDnsServerAddress);
  }
  CtInsert(ct, _UU("CMD_DhcpGet_Column_DNS"), tmp);


  UniStrCpy(tmp, sizeof(tmp), _UU("SEC_NONE"));
  if (IPToUINT(&t.DhcpDnsServerAddress2) != 0)
  {
   IPToUniStr(tmp, sizeof(tmp), &t.DhcpDnsServerAddress2);
  }
  CtInsert(ct, _UU("CMD_DhcpGet_Column_DNS2"), tmp);


  StrToUni(tmp, sizeof(tmp), t.DhcpDomainName);
  CtInsert(ct, _UU("CMD_DhcpGet_Column_DOMAIN"), tmp);


  CtInsert(ct, _UU("CMD_SecureNatHostGet_Column_LOG"), t.SaveLog ? _UU("SEC_YES") : _UU("SEC_NO"));


  if (t.ApplyDhcpPushRoutes)
  {
   StrToUni(tmp, sizeof(tmp), t.DhcpPushRoutes);
   CtInsert(ct, _UU("CMD_DhcpGet_Column_PUSHROUTE"), tmp);
  }

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
