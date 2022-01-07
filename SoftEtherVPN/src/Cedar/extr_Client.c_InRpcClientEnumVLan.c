
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int Enabled; int Version; int MacAddress; int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef int PACK ;


 scalar_t__ PackGetIntEx (int *,char*,size_t) ;
 int PackGetNum (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcClientEnumVLan(RPC_CLIENT_ENUM_VLAN *v, PACK *p)
{
 UINT i;

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(v, sizeof(RPC_CLIENT_ENUM_VLAN));
 v->NumItem = PackGetNum(p, "NumItem");
 v->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM *) * v->NumItem);

 for (i = 0;i < v->NumItem;i++)
 {
  RPC_CLIENT_ENUM_VLAN_ITEM *item = v->Items[i] =
   ZeroMalloc(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM));

  PackGetStrEx(p, "DeviceName", item->DeviceName, sizeof(item->DeviceName), i);
  item->Enabled = PackGetIntEx(p, "Enabled", i) ? 1 : 0;
  PackGetStrEx(p, "MacAddress", item->MacAddress, sizeof(item->MacAddress), i);
  PackGetStrEx(p, "Version", item->Version, sizeof(item->Version), i);
 }
}
