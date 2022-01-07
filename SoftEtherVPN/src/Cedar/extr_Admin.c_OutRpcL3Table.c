
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Metric; int GatewayAddress; int SubnetMask; int NetworkAddress; int Name; } ;
typedef TYPE_1__ RPC_L3TABLE ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcL3Table(PACK *p, RPC_L3TABLE *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "Name", t->Name);
 PackAddIp32(p, "NetworkAddress", t->NetworkAddress);
 PackAddIp32(p, "SubnetMask", t->SubnetMask);
 PackAddIp32(p, "GatewayAddress", t->GatewayAddress);
 PackAddInt(p, "Metric", t->Metric);
}
