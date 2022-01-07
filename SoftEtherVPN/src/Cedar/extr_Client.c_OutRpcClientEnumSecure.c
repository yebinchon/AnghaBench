
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_4__ {int Manufacturer; int DeviceName; int Type; int DeviceId; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_SECURE_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_SECURE ;
typedef int PACK ;


 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddNum (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcClientEnumSecure(PACK *p, RPC_CLIENT_ENUM_SECURE *e)
{
 UINT i;

 if (e == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddNum(p, "NumItem", e->NumItem);

 PackSetCurrentJsonGroupName(p, "SecureDeviceList");
 for (i = 0;i < e->NumItem;i++)
 {
  RPC_CLIENT_ENUM_SECURE_ITEM *item = e->Items[i];

  PackAddIntEx(p, "DeviceId", item->DeviceId, i, e->NumItem);
  PackAddIntEx(p, "Type", item->Type, i, e->NumItem);
  PackAddStrEx(p, "DeviceName", item->DeviceName, i, e->NumItem);
  PackAddStrEx(p, "Manufacturer", item->Manufacturer, i, e->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
