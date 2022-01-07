
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* IsWinPcapNeeded; void* IsBridgeSupportedOs; } ;
typedef TYPE_1__ RPC_BRIDGE_SUPPORT ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcBridgeSupport(RPC_BRIDGE_SUPPORT *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_BRIDGE_SUPPORT));

 t->IsBridgeSupportedOs = PackGetBool(p, "IsBridgeSupportedOs");
 t->IsWinPcapNeeded = PackGetBool(p, "IsWinPcapNeeded");
}
