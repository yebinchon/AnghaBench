
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_4__ {int Hostname; int Mask; int IpAddress; int MacAddress; int ExpireTime; int LeasedTime; int Id; } ;
typedef TYPE_1__ RPC_ENUM_DHCP_ITEM ;
typedef TYPE_2__ RPC_ENUM_DHCP ;
typedef int PACK ;


 int PackAddDataEx (int *,char*,int ,int,size_t,size_t) ;
 int PackAddInt (int *,char*,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumDhcp(PACK *p, RPC_ENUM_DHCP *t)
{
 UINT i;

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);
 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "DhcpTable");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_DHCP_ITEM *e = &t->Items[i];

  PackAddIntEx(p, "Id", e->Id, i, t->NumItem);
  PackAddTime64Ex(p, "LeasedTime", e->LeasedTime, i, t->NumItem);
  PackAddTime64Ex(p, "ExpireTime", e->ExpireTime, i, t->NumItem);
  PackAddDataEx(p, "MacAddress", e->MacAddress, 6, i, t->NumItem);
  PackAddIp32Ex(p, "IpAddress", e->IpAddress, i, t->NumItem);
  PackAddIntEx(p, "Mask", e->Mask, i, t->NumItem);
  PackAddStrEx(p, "Hostname", e->Hostname, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
