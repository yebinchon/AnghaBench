
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumIpTable; TYPE_1__* IpTables; int HubName; } ;
struct TYPE_6__ {int RemoteHostname; void* RemoteItem; void* UpdatedTime; void* CreatedTime; void* DhcpAllocated; int IpAddress; int Ip; int IpV6; int SessionName; int Key; } ;
typedef TYPE_1__ RPC_ENUM_IP_TABLE_ITEM ;
typedef TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef int PACK ;


 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetIp (int *,char*,int *) ;
 int PackGetIp32Ex (int *,char*,size_t) ;
 int PackGetIpEx (int *,char*,int *,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int UINTToIP (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumIpTable(RPC_ENUM_IP_TABLE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_IP_TABLE));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumIpTable = PackGetIndexCount(p, "SessionName");
 t->IpTables = ZeroMalloc(sizeof(RPC_ENUM_IP_TABLE_ITEM) * t->NumIpTable);

 for (i = 0;i < t->NumIpTable;i++)
 {
  RPC_ENUM_IP_TABLE_ITEM *e = &t->IpTables[i];

  e->Key = PackGetIntEx(p, "Key", i);
  PackGetStrEx(p, "SessionName", e->SessionName, sizeof(e->SessionName), i);
  e->Ip = PackGetIp32Ex(p, "Ip", i);
  if (PackGetIpEx(p, "IpV6", &e->IpV6, i) == 0)
  {
   UINTToIP(&e->IpV6, e->Ip);
  }
  PackGetIp(p, "IpAddress", &e->IpAddress);
  e->DhcpAllocated = PackGetBoolEx(p, "DhcpAllocated", i);
  e->CreatedTime = PackGetInt64Ex(p, "CreatedTime", i);
  e->UpdatedTime = PackGetInt64Ex(p, "UpdatedTime", i);
  e->RemoteItem = PackGetBoolEx(p, "RemoteItem", i);
  PackGetStrEx(p, "RemoteHostname", e->RemoteHostname, sizeof(e->RemoteHostname), i);
 }
}
