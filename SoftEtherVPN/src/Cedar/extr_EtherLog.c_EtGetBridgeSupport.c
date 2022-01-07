
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int IsWinPcapNeeded; int IsBridgeSupportedOs; } ;
typedef TYPE_1__ RPC_BRIDGE_SUPPORT ;
typedef int EL ;


 int ERR_NO_ERROR ;
 int IsBridgeSupported () ;
 int IsNeedWinPcap () ;
 int Zero (TYPE_1__*,int) ;

UINT EtGetBridgeSupport(EL *a, RPC_BRIDGE_SUPPORT *t)
{
 Zero(t, sizeof(RPC_BRIDGE_SUPPORT));

 t->IsBridgeSupportedOs = IsBridgeSupported();
 t->IsWinPcapNeeded = IsNeedWinPcap();

 return ERR_NO_ERROR;
}
