
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DeviceId; } ;
typedef TYPE_1__ RPC_USE_SECURE ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcUseSecure(RPC_USE_SECURE *u, PACK *p)
{

 if (u == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(u, sizeof(RPC_USE_SECURE));
 u->DeviceId = PackGetInt(p, "DeviceId");
}
