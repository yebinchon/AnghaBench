
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; int IsLicenseSupported; TYPE_1__* Items; } ;
struct TYPE_4__ {int Active; int DeviceName; } ;
typedef TYPE_1__ RPC_ENUM_DEVICE_ITEM ;
typedef TYPE_2__ RPC_ENUM_DEVICE ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddInt (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumDevice(PACK *p, RPC_ENUM_DEVICE *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "DeviceList");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_DEVICE_ITEM *d = &t->Items[i];

  PackAddStrEx(p, "DeviceName", d->DeviceName, i, t->NumItem);
  PackAddBoolEx(p, "Active", d->Active, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));

 PackAddBool(p, "IsLicenseSupported", t->IsLicenseSupported);
}
