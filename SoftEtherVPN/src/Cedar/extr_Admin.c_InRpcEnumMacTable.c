
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumMacTable; TYPE_1__* MacTables; int HubName; } ;
struct TYPE_6__ {int RemoteHostname; int RemoteItem; void* UpdatedTime; void* CreatedTime; void* VlanId; int MacAddress; int SessionName; void* Key; } ;
typedef TYPE_1__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef int PACK ;


 int PackGetBoolEx (int *,char*,size_t) ;
 int PackGetDataEx2 (int *,char*,int ,int,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumMacTable(RPC_ENUM_MAC_TABLE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_MAC_TABLE));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumMacTable = PackGetIndexCount(p, "SessionName");
 t->MacTables = ZeroMalloc(sizeof(RPC_ENUM_MAC_TABLE_ITEM) * t->NumMacTable);

 for (i = 0;i < t->NumMacTable;i++)
 {
  RPC_ENUM_MAC_TABLE_ITEM *e = &t->MacTables[i];

  e->Key = PackGetIntEx(p, "Key", i);
  PackGetStrEx(p, "SessionName", e->SessionName, sizeof(e->SessionName), i);
  PackGetDataEx2(p, "MacAddress", e->MacAddress, sizeof(e->MacAddress), i);
  e->VlanId = PackGetIntEx(p, "VlanId", i);
  e->CreatedTime = PackGetInt64Ex(p, "CreatedTime", i);
  e->UpdatedTime = PackGetInt64Ex(p, "UpdatedTime", i);
  e->RemoteItem = PackGetBoolEx(p, "RemoteItem", i);
  PackGetStrEx(p, "RemoteHostname", e->RemoteHostname, sizeof(e->RemoteHostname), i);
 }
}
