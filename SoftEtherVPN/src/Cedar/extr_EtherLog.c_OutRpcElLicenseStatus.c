
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SystemExpires; int SystemId; int Valid; } ;
typedef TYPE_1__ RPC_EL_LICENSE_STATUS ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt64 (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcElLicenseStatus(PACK *p, RPC_EL_LICENSE_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "Valid", t->Valid);
 PackAddInt64(p, "SystemId", t->SystemId);
 PackAddTime64(p, "SystemExpires", t->SystemExpires);
}
