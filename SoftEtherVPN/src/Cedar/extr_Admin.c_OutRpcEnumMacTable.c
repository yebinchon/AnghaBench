
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumMacTable; TYPE_1__* MacTables; int HubName; } ;
struct TYPE_4__ {int RemoteHostname; int RemoteItem; int UpdatedTime; int CreatedTime; int VlanId; int MacAddress; int SessionName; int Key; } ;
typedef TYPE_1__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddDataEx (int *,char*,int ,int,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumMacTable(PACK *p, RPC_ENUM_MAC_TABLE *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "MacTable");
 for (i = 0;i < t->NumMacTable;i++)
 {
  RPC_ENUM_MAC_TABLE_ITEM *e = &t->MacTables[i];

  PackAddIntEx(p, "Key", e->Key, i, t->NumMacTable);
  PackAddStrEx(p, "SessionName", e->SessionName, i, t->NumMacTable);
  PackAddDataEx(p, "MacAddress", e->MacAddress, sizeof(e->MacAddress), i, t->NumMacTable);
  PackAddIntEx(p, "VlanId", e->VlanId, i, t->NumMacTable);
  PackAddTime64Ex(p, "CreatedTime", e->CreatedTime, i, t->NumMacTable);
  PackAddTime64Ex(p, "UpdatedTime", e->UpdatedTime, i, t->NumMacTable);
  PackAddBoolEx(p, "RemoteItem", e->RemoteItem, i, t->NumMacTable);
  PackAddStrEx(p, "RemoteHostname", e->RemoteHostname, i, t->NumMacTable);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
