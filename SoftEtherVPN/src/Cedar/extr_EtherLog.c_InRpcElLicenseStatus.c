
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* SystemExpires; void* SystemId; int Valid; } ;
typedef TYPE_1__ RPC_EL_LICENSE_STATUS ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcElLicenseStatus(RPC_EL_LICENSE_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_EL_LICENSE_STATUS));

 t->Valid = PackGetBool(p, "Valid");
 t->SystemId = PackGetInt64(p, "SystemId");
 t->SystemExpires = PackGetInt64(p, "SystemExpires");
}
