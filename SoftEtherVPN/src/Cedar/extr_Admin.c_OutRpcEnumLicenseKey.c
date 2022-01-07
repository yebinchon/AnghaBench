
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int SerialId; int SystemId; int ProductId; int Status; int Expires; int LicenseName; int LicenseId; int LicenseKey; int Id; } ;
typedef TYPE_1__ RPC_ENUM_LICENSE_KEY_ITEM ;
typedef TYPE_2__ RPC_ENUM_LICENSE_KEY ;
typedef int PACK ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddInt64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumLicenseKey(PACK *p, RPC_ENUM_LICENSE_KEY *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "LicenseKeyList");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_LICENSE_KEY_ITEM *e = &t->Items[i];

  PackAddIntEx(p, "Id", e->Id, i, t->NumItem);
  PackAddStrEx(p, "LicenseKey", e->LicenseKey, i, t->NumItem);
  PackAddStrEx(p, "LicenseId", e->LicenseId, i, t->NumItem);
  PackAddStrEx(p, "LicenseName", e->LicenseName, i, t->NumItem);
  PackAddTime64Ex(p, "Expires", e->Expires, i, t->NumItem);
  PackAddIntEx(p, "Status", e->Status, i, t->NumItem);
  PackAddIntEx(p, "ProductId", e->ProductId, i, t->NumItem);
  PackAddInt64Ex(p, "SystemId", e->SystemId, i, t->NumItem);
  PackAddIntEx(p, "SerialId", e->SerialId, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
