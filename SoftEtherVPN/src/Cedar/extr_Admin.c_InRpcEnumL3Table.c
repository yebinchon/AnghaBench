
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int Name; } ;
struct TYPE_6__ {int Metric; void* GatewayAddress; void* SubnetMask; void* NetworkAddress; } ;
typedef TYPE_1__ RPC_L3TABLE ;
typedef TYPE_2__ RPC_ENUM_L3TABLE ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 void* PackGetIp32Ex (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumL3Table(RPC_ENUM_L3TABLE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_L3TABLE));
 t->NumItem = PackGetInt(p, "NumItem");
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 t->Items = ZeroMalloc(sizeof(RPC_L3TABLE) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_L3TABLE *e = &t->Items[i];

  e->NetworkAddress = PackGetIp32Ex(p, "NetworkAddress", i);
  e->SubnetMask = PackGetIp32Ex(p, "SubnetMask", i);
  e->GatewayAddress = PackGetIp32Ex(p, "GatewayAddress", i);
  e->Metric = PackGetIntEx(p, "Metric", i);
 }
}
