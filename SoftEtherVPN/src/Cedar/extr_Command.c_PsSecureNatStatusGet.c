
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_13__ {int * HubName; int Rpc; } ;
struct TYPE_12__ {scalar_t__ IsRawIpMode; scalar_t__ IsKernelMode; int NumDhcpClients; int NumDnsSessions; int NumIcmpSessions; int NumUdpSessions; int NumTcpSessions; int HubName; } ;
typedef TYPE_1__ RPC_NAT_STATUS ;
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
 int FreeRpcNatStatus (TYPE_1__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetSecureNATStatus (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,int *) ;
 int UniFormat (int *,int,int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PsSecureNatStatusGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_NAT_STATUS t;


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


 ret = ScGetSecureNATStatus(ps->Rpc, &t);

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

  StrToUni(tmp, sizeof(tmp), ps->HubName);
  CtInsert(ct, _UU("SM_HUB_COLUMN_1"), tmp);

  UniFormat(tmp, sizeof(tmp), _UU("SM_SNAT_NUM_SESSION"), t.NumTcpSessions);
  CtInsert(ct, _UU("NM_STATUS_TCP"), tmp);

  UniFormat(tmp, sizeof(tmp), _UU("SM_SNAT_NUM_SESSION"), t.NumUdpSessions);
  CtInsert(ct, _UU("NM_STATUS_UDP"), tmp);

  UniFormat(tmp, sizeof(tmp), _UU("SM_SNAT_NUM_SESSION"), t.NumIcmpSessions);
  CtInsert(ct, _UU("NM_STATUS_ICMP"), tmp);

  UniFormat(tmp, sizeof(tmp), _UU("SM_SNAT_NUM_SESSION"), t.NumDnsSessions);
  CtInsert(ct, _UU("NM_STATUS_DNS"), tmp);

  UniFormat(tmp, sizeof(tmp), _UU("SM_SNAT_NUM_CLIENT"), t.NumDhcpClients);
  CtInsert(ct, _UU("NM_STATUS_DHCP"), tmp);

  CtInsert(ct, _UU("SM_SNAT_IS_KERNEL"), t.IsKernelMode ? _UU("SEC_YES") : _UU("SEC_NO"));
  CtInsert(ct, _UU("SM_SNAT_IS_RAW"), t.IsRawIpMode ? _UU("SEC_YES") : _UU("SEC_NO"));

  CtFree(ct, c);
 }

 FreeRpcNatStatus(&t);

 FreeParamValueList(o);

 return 0;
}
