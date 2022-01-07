
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TapMode; int HubName; int DeviceName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcLocalBridge(PACK *p, RPC_LOCALBRIDGE *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "DeviceName", t->DeviceName);
 PackAddStr(p, "HubNameLB", t->HubName);
 PackAddBool(p, "TapMode", t->TapMode);
}
