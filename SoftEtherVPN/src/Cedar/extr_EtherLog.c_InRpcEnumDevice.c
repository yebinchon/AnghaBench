
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; int IsLicenseSupported; TYPE_1__* Items; } ;
struct TYPE_6__ {int Active; int DeviceName; } ;
typedef TYPE_1__ RPC_ENUM_DEVICE_ITEM ;
typedef TYPE_2__ RPC_ENUM_DEVICE ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetBoolEx (int *,char*,size_t) ;
 int PackGetInt (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumDevice(RPC_ENUM_DEVICE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_DEVICE));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_DEVICE_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_DEVICE_ITEM *d = &t->Items[i];

  PackGetStrEx(p, "DeviceName", d->DeviceName, sizeof(d->DeviceName), i);
  d->Active = PackGetBoolEx(p, "Active", i);
 }

 t->IsLicenseSupported = PackGetBool(p, "IsLicenseSupported");
}
