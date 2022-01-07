
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_6__ {int Hostname; void* Mask; int IpAddress; int MacAddress; void* ExpireTime; void* LeasedTime; void* Id; } ;
typedef TYPE_1__ RPC_ENUM_DHCP_ITEM ;
typedef TYPE_2__ RPC_ENUM_DHCP ;
typedef int PACK ;


 int PackGetDataEx2 (int *,char*,int ,int,size_t) ;
 int PackGetInt (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetIp32Ex (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumDhcp(RPC_ENUM_DHCP *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_DHCP));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_DHCP_ITEM) * t->NumItem);
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_DHCP_ITEM *e = &t->Items[i];

  e->Id = PackGetIntEx(p, "Id", i);
  e->LeasedTime = PackGetInt64Ex(p, "LeasedTime", i);
  e->ExpireTime = PackGetInt64Ex(p, "ExpireTime", i);
  PackGetDataEx2(p, "MacAddress", e->MacAddress, 6, i);
  e->IpAddress = PackGetIp32Ex(p, "IpAddress", i);
  e->Mask = PackGetIntEx(p, "Mask", i);
  PackGetStrEx(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
 }
}
