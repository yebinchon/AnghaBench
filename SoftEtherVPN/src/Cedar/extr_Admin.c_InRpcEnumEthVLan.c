
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {void* Enabled; void* Support; int DriverType; int DriverName; int DeviceInstanceId; int Guid; int DeviceName; } ;
typedef TYPE_1__ RPC_ENUM_ETH_VLAN_ITEM ;
typedef TYPE_2__ RPC_ENUM_ETH_VLAN ;
typedef int PACK ;


 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumEthVLan(RPC_ENUM_ETH_VLAN *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_ETH_VLAN));

 t->NumItem = PackGetIndexCount(p, "DeviceName");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_ETH_VLAN_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_ETH_VLAN_ITEM *e = &t->Items[i];

  PackGetStrEx(p, "DeviceName", e->DeviceName, sizeof(e->DeviceName), i);
  PackGetStrEx(p, "Guid", e->Guid, sizeof(e->Guid), i);
  PackGetStrEx(p, "DeviceInstanceId", e->DeviceInstanceId, sizeof(e->DeviceInstanceId), i);
  PackGetStrEx(p, "DriverName", e->DriverName, sizeof(e->DriverName), i);
  PackGetStrEx(p, "DriverType", e->DriverType, sizeof(e->DriverType), i);
  e->Support = PackGetBoolEx(p, "Support", i);
  e->Enabled = PackGetBoolEx(p, "Enabled", i);
 }
}
