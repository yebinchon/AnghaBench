
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Metric; void* GatewayAddress; void* SubnetMask; void* NetworkAddress; int Name; } ;
typedef TYPE_1__ RPC_L3TABLE ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 void* PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcL3Table(RPC_L3TABLE *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_L3TABLE));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 t->NetworkAddress = PackGetIp32(p, "NetworkAddress");
 t->SubnetMask = PackGetIp32(p, "SubnetMask");
 t->GatewayAddress = PackGetIp32(p, "GatewayAddress");
 t->Metric = PackGetInt(p, "Metric");
}
