
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumHub; TYPE_1__* Hubs; } ;
struct TYPE_6__ {int Traffic; void* IsTrafficFilled; void* NumLogin; void* LastLoginTime; void* CreatedTime; void* LastCommTime; void* NumIpTables; void* NumMacTables; void* NumGroups; void* NumUsers; void* NumSessions; void* HubType; void* Online; int HubName; } ;
typedef TYPE_1__ RPC_ENUM_HUB_ITEM ;
typedef TYPE_2__ RPC_ENUM_HUB ;
typedef int PACK ;


 int InRpcTrafficEx (int *,int *,size_t) ;
 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumHub(RPC_ENUM_HUB *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_HUB));
 t->NumHub = PackGetIndexCount(p, "HubName");
 t->Hubs = ZeroMalloc(sizeof(RPC_ENUM_HUB_ITEM) * t->NumHub);

 for (i = 0;i < t->NumHub;i++)
 {
  RPC_ENUM_HUB_ITEM *e = &t->Hubs[i];

  PackGetStrEx(p, "HubName", e->HubName, sizeof(e->HubName), i);
  e->Online = PackGetBoolEx(p, "Online", i);
  e->HubType = PackGetIntEx(p, "HubType", i);
  e->NumSessions = PackGetIntEx(p, "NumSessions", i);
  e->NumUsers = PackGetIntEx(p, "NumUsers", i);
  e->NumGroups = PackGetIntEx(p, "NumGroups", i);
  e->NumMacTables = PackGetIntEx(p, "NumMacTables", i);
  e->NumIpTables = PackGetIntEx(p, "NumIpTables", i);
  e->LastCommTime = PackGetInt64Ex(p, "LastCommTime", i);
  e->CreatedTime = PackGetInt64Ex(p, "CreatedTime", i);
  e->LastLoginTime = PackGetInt64Ex(p, "LastLoginTime", i);
  e->NumLogin = PackGetIntEx(p, "NumLogin", i);
  e->IsTrafficFilled = PackGetBoolEx(p, "IsTrafficFilled", i);

  InRpcTrafficEx(&e->Traffic, p, i);
 }
}
