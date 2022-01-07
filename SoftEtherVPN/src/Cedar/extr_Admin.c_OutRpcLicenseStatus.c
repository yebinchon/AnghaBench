
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ReleaseDate; int NumUserCreationLicense; int IsSubscriptionExpired; int SubscriptionExpires; int AllowEnterpriseFunction; int NeedSubscription; int NumBridgeConnectLicense; int NumClientConnectLicense; int SystemExpires; int SystemId; int EditionStr; int EditionId; } ;
typedef TYPE_1__ RPC_LICENSE_STATUS ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddInt64 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcLicenseStatus(PACK *p, RPC_LICENSE_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "EditionId", t->EditionId);
 PackAddStr(p, "EditionStr", t->EditionStr);
 PackAddInt64(p, "SystemId", t->SystemId);
 PackAddTime64(p, "SystemExpires", t->SystemExpires);
 PackAddInt(p, "NumClientConnectLicense", t->NumClientConnectLicense);
 PackAddInt(p, "NumBridgeConnectLicense", t->NumBridgeConnectLicense);


 PackAddBool(p, "NeedSubscription", t->NeedSubscription);
 PackAddBool(p, "AllowEnterpriseFunction", t->AllowEnterpriseFunction);
 PackAddTime64(p, "SubscriptionExpires", t->SubscriptionExpires);
 PackAddBool(p, "IsSubscriptionExpired", t->IsSubscriptionExpired);
 PackAddInt(p, "NumUserCreationLicense", t->NumUserCreationLicense);
 PackAddTime64(p, "ReleaseDate", t->ReleaseDate);
}
