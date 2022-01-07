
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int TapMode; int Active; int Online; int HubName; int DeviceName; } ;
typedef TYPE_1__ RPC_LOCALBRIDGE ;
typedef TYPE_2__ RPC_ENUM_LOCALBRIDGE ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddInt (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumLocalBridge(PACK *p, RPC_ENUM_LOCALBRIDGE *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "LocalBridgeList");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_LOCALBRIDGE *e = &t->Items[i];

  PackAddStrEx(p, "DeviceName", e->DeviceName, i, t->NumItem);
  PackAddStrEx(p, "HubNameLB", e->HubName, i, t->NumItem);
  PackAddBoolEx(p, "Online", e->Online, i, t->NumItem);
  PackAddBoolEx(p, "Active", e->Active, i, t->NumItem);
  PackAddBoolEx(p, "TapMode", e->TapMode, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
