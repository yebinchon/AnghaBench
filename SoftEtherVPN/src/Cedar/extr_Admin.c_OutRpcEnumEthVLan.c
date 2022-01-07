
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int Enabled; int Support; int DriverType; int DriverName; int DeviceInstanceId; int Guid; int DeviceName; } ;
typedef TYPE_1__ RPC_ENUM_ETH_VLAN_ITEM ;
typedef TYPE_2__ RPC_ENUM_ETH_VLAN ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumEthVLan(PACK *p, RPC_ENUM_ETH_VLAN *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackSetCurrentJsonGroupName(p, "Devices");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_ETH_VLAN_ITEM *e = &t->Items[i];

  PackAddStrEx(p, "DeviceName", e->DeviceName, i, t->NumItem);
  PackAddStrEx(p, "Guid", e->Guid, i, t->NumItem);
  PackAddStrEx(p, "DeviceInstanceId", e->DeviceInstanceId, i, t->NumItem);
  PackAddStrEx(p, "DriverName", e->DriverName, i, t->NumItem);
  PackAddStrEx(p, "DriverType", e->DriverType, i, t->NumItem);
  PackAddBoolEx(p, "Support", e->Support, i, t->NumItem);
  PackAddBoolEx(p, "Enabled", e->Enabled, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
