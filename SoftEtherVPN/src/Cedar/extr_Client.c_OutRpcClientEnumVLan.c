
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_4__ {int Version; int MacAddress; int Enabled; int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef int PACK ;


 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddNum (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcClientEnumVLan(PACK *p, RPC_CLIENT_ENUM_VLAN *v)
{
 UINT i;

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddNum(p, "NumItem", v->NumItem);

 PackSetCurrentJsonGroupName(p, "VLanList");
 for (i = 0;i < v->NumItem;i++)
 {
  RPC_CLIENT_ENUM_VLAN_ITEM *item = v->Items[i];

  PackAddStrEx(p, "DeviceName", item->DeviceName, i, v->NumItem);
  PackAddIntEx(p, "Enabled", item->Enabled, i, v->NumItem);
  PackAddStrEx(p, "MacAddress", item->MacAddress, i, v->NumItem);
  PackAddStrEx(p, "Version", item->Version, i, v->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
