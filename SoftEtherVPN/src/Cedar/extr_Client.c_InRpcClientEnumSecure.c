
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int Manufacturer; int DeviceName; void* Type; void* DeviceId; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_SECURE_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_SECURE ;
typedef int PACK ;


 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetNum (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcClientEnumSecure(RPC_CLIENT_ENUM_SECURE *e, PACK *p)
{
 UINT i;

 if (e == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(e, sizeof(RPC_CLIENT_ENUM_SECURE));

 e->NumItem = PackGetNum(p, "NumItem");
 e->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_SECURE_ITEM *) * e->NumItem);
 for (i = 0;i < e->NumItem;i++)
 {
  RPC_CLIENT_ENUM_SECURE_ITEM *item = e->Items[i] = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_SECURE_ITEM));

  item->DeviceId = PackGetIntEx(p, "DeviceId", i);
  item->Type = PackGetIntEx(p, "Type", i);
  PackGetStrEx(p, "DeviceName", item->DeviceName, sizeof(item->DeviceName), i);
  PackGetStrEx(p, "Manufacturer", item->Manufacturer, sizeof(item->Manufacturer), i);
 }
}
