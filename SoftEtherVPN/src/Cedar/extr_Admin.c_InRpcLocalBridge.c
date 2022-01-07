
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int TapMode; int HubName; int DeviceName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcLocalBridge(RPC_LOCALBRIDGE *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_LOCALBRIDGE));
 PackGetStr(p, "DeviceName", t->DeviceName, sizeof(t->DeviceName));
 PackGetStr(p, "HubNameLB", t->HubName, sizeof(t->HubName));
 t->TapMode = PackGetBool(p, "TapMode");
}
