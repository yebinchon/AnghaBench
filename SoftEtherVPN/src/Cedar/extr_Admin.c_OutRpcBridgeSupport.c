
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IsWinPcapNeeded; int IsBridgeSupportedOs; } ;
typedef TYPE_1__ RPC_BRIDGE_SUPPORT ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;

void OutRpcBridgeSupport(PACK *p, RPC_BRIDGE_SUPPORT *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "IsBridgeSupportedOs", t->IsBridgeSupportedOs);
 PackAddBool(p, "IsWinPcapNeeded",t->IsWinPcapNeeded);
}
