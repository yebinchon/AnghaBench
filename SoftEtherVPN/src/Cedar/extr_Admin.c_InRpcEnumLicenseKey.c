
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {void* SerialId; void* SystemId; void* ProductId; void* Status; void* Expires; int LicenseName; int LicenseId; int LicenseKey; void* Id; } ;
typedef TYPE_1__ RPC_ENUM_LICENSE_KEY_ITEM ;
typedef TYPE_2__ RPC_ENUM_LICENSE_KEY ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumLicenseKey(RPC_ENUM_LICENSE_KEY *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_LICENSE_KEY));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_LICENSE_KEY_ITEM) * t->NumItem);
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_LICENSE_KEY_ITEM *e = &t->Items[i];

  e->Id = PackGetIntEx(p, "Id", i);
  PackGetStrEx(p, "LicenseKey", e->LicenseKey, sizeof(e->LicenseKey), i);
  PackGetStrEx(p, "LicenseId", e->LicenseId, sizeof(e->LicenseId), i);
  PackGetStrEx(p, "LicenseName", e->LicenseName, sizeof(e->LicenseName), i);
  e->Expires = PackGetInt64Ex(p, "Expires", i);
  e->Status = PackGetIntEx(p, "Status", i);
  e->ProductId = PackGetIntEx(p, "ProductId", i);
  e->SystemId = PackGetInt64Ex(p, "SystemId", i);
  e->SerialId = PackGetIntEx(p, "SerialId", i);
 }
}
