
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int (* Write ) (TYPE_4__*,int *) ;} ;
struct TYPE_14__ {int Rpc; } ;
struct TYPE_13__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_12__ {int DeviceName; } ;
typedef TYPE_1__ RPC_ENUM_ETH_ITEM ;
typedef TYPE_2__ RPC_ENUM_ETH ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumEth (TYPE_2__*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,int *,int *,int ) ;
 scalar_t__ ScEnumEthernet (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 int stub1 (TYPE_4__*,int *) ;

UINT PsBridgeDeviceList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_ETH t;
 UINT i;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScEnumEthernet(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 for (i = 0;i < t.NumItem;i++)
 {
  RPC_ENUM_ETH_ITEM *item = &t.Items[i];
  wchar_t tmp[MAX_SIZE * 2];

  StrToUni(tmp, sizeof(tmp), item->DeviceName);
  c->Write(c, tmp);
 }

 FreeRpcEnumEth(&t);

 FreeParamValueList(o);

 return 0;
}
