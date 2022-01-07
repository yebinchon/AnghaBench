
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumIpTable; TYPE_1__* IpTables; int HubName; } ;
struct TYPE_4__ {int RemoteHostname; int RemoteItem; int UpdatedTime; int CreatedTime; int DhcpAllocated; int IpAddress; int IpV6; int Ip; int SessionName; int Key; } ;
typedef TYPE_1__ RPC_ENUM_IP_TABLE_ITEM ;
typedef TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddIpEx (int *,char*,int *,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumIpTable(PACK *p, RPC_ENUM_IP_TABLE *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "IpTable");
 for (i = 0;i < t->NumIpTable;i++)
 {
  RPC_ENUM_IP_TABLE_ITEM *e = &t->IpTables[i];

  PackAddIntEx(p, "Key", e->Key, i, t->NumIpTable);
  PackAddStrEx(p, "SessionName", e->SessionName, i, t->NumIpTable);
  PackAddIp32Ex(p, "Ip", e->Ip, i, t->NumIpTable);
  PackAddIpEx(p, "IpV6", &e->IpV6, i, t->NumIpTable);
  PackAddIpEx(p, "IpAddress", &e->IpAddress, i, t->NumIpTable);
  PackAddBoolEx(p, "DhcpAllocated", e->DhcpAllocated, i, t->NumIpTable);
  PackAddTime64Ex(p, "CreatedTime", e->CreatedTime, i, t->NumIpTable);
  PackAddTime64Ex(p, "UpdatedTime", e->UpdatedTime, i, t->NumIpTable);
  PackAddBoolEx(p, "RemoteItem", e->RemoteItem, i, t->NumIpTable);
  PackAddStrEx(p, "RemoteHostname", e->RemoteHostname, i, t->NumIpTable);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
