
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ReleaseDate; void* NumUserCreationLicense; void* IsSubscriptionExpired; void* SubscriptionExpires; void* AllowEnterpriseFunction; void* NeedSubscription; void* NumBridgeConnectLicense; void* NumClientConnectLicense; void* SystemExpires; void* SystemId; int EditionStr; void* EditionId; } ;
typedef TYPE_1__ RPC_LICENSE_STATUS ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcLicenseStatus(RPC_LICENSE_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_LICENSE_STATUS));

 t->EditionId = PackGetInt(p, "EditionId");
 PackGetStr(p, "EditionStr", t->EditionStr, sizeof(t->EditionStr) );
 t->SystemId = PackGetInt64(p, "SystemId");
 t->SystemExpires = PackGetInt64(p, "SystemExpires");
 t->NumClientConnectLicense = PackGetInt(p, "NumClientConnectLicense");
 t->NumBridgeConnectLicense = PackGetInt(p, "NumBridgeConnectLicense");


 t->NeedSubscription = PackGetBool(p, "NeedSubscription");
 t->AllowEnterpriseFunction = PackGetBool(p, "AllowEnterpriseFunction");
 t->SubscriptionExpires = PackGetInt64(p, "SubscriptionExpires");
 t->IsSubscriptionExpired = PackGetBool(p, "IsSubscriptionExpired");
 t->NumUserCreationLicense = PackGetInt(p, "NumUserCreationLicense");
 t->ReleaseDate = PackGetInt64(p, "ReleaseDate");
}
