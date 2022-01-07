
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
struct TYPE_11__ {scalar_t__ SaveLog; int NatUdpTimeout; int NatTcpTimeout; int Mtu; scalar_t__ UseNat; int HubName; } ;
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
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetSecureNATOption (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;

UINT PsNatGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
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


  CtInsert(ct, _UU("CMD_NatGet_Column_USE"), t.UseNat ? _UU("SEC_YES") : _UU("SEC_NO"));


  UniToStru(tmp, t.Mtu);
  CtInsert(ct, _UU("CMD_NetGet_Column_MTU"), tmp);


  UniToStru(tmp, t.NatTcpTimeout);
  CtInsert(ct, _UU("CMD_NatGet_Column_TCP"), tmp);


  UniToStru(tmp, t.NatUdpTimeout);
  CtInsert(ct, _UU("CMD_NatGet_Column_UDP"), tmp);


  CtInsert(ct, _UU("CMD_SecureNatHostGet_Column_LOG"), t.SaveLog ? _UU("SEC_YES") : _UU("SEC_NO"));

  CtFree(ct, c);
 }

 FreeParamValueList(o);

 return 0;
}
