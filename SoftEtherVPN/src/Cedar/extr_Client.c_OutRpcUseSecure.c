
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DeviceId; } ;
typedef TYPE_1__ RPC_USE_SECURE ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;

void OutRpcUseSecure(PACK *p, RPC_USE_SECURE *u)
{

 if (u == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "DeviceId", u->DeviceId);
}
