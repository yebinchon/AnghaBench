
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {void* TapMode; void* Active; void* Online; int HubName; int DeviceName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef TYPE_2__ RPC_ENUM_LOCALBRIDGE ;
typedef int PACK ;


 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetInt (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumLocalBridge(RPC_ENUM_LOCALBRIDGE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_LOCALBRIDGE));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_LOCALBRIDGE) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_LOCALBRIDGE *e = &t->Items[i];

  PackGetStrEx(p, "DeviceName", e->DeviceName, sizeof(e->DeviceName), i);
  PackGetStrEx(p, "HubNameLB", e->HubName, sizeof(e->HubName), i);
  e->Online = PackGetBoolEx(p, "Online", i);
  e->Active = PackGetBoolEx(p, "Active", i);
  e->TapMode = PackGetBoolEx(p, "TapMode", i);
 }
}
