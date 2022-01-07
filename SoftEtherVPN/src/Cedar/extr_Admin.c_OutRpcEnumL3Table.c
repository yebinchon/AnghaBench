
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int Name; } ;
struct TYPE_4__ {int Metric; int GatewayAddress; int SubnetMask; int NetworkAddress; } ;
typedef TYPE_1__ RPC_L3TABLE ;
typedef TYPE_2__ RPC_ENUM_L3TABLE ;
typedef int PACK ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumL3Table(PACK *p, RPC_ENUM_L3TABLE *t)
{
 UINT i;

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);
 PackAddStr(p, "Name", t->Name);

 PackSetCurrentJsonGroupName(p, "L3Table");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_L3TABLE *e = &t->Items[i];

  PackAddIp32Ex(p, "NetworkAddress", e->NetworkAddress, i, t->NumItem);
  PackAddIp32Ex(p, "SubnetMask", e->SubnetMask, i, t->NumItem);
  PackAddIp32Ex(p, "GatewayAddress", e->GatewayAddress, i, t->NumItem);
  PackAddIntEx(p, "Metric", e->Metric, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
