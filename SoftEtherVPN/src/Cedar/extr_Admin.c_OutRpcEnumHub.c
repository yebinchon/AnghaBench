
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumHub; TYPE_1__* Hubs; } ;
struct TYPE_4__ {int Traffic; int IsTrafficFilled; int NumLogin; int LastLoginTime; int CreatedTime; int LastCommTime; int NumIpTables; int NumMacTables; int NumGroups; int NumUsers; int NumSessions; int HubType; int Online; int HubName; } ;
typedef TYPE_1__ RPC_ENUM_HUB_ITEM ;
typedef TYPE_2__ RPC_ENUM_HUB ;
typedef int PACK ;


 int OutRpcTrafficEx (int *,int *,size_t,size_t) ;
 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumHub(PACK *p, RPC_ENUM_HUB *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackSetCurrentJsonGroupName(p, "HubList");
 for (i = 0;i < t->NumHub;i++)
 {
  RPC_ENUM_HUB_ITEM *e = &t->Hubs[i];

  PackAddStrEx(p, "HubName", e->HubName, i, t->NumHub);
  PackAddBoolEx(p, "Online", e->Online, i, t->NumHub);
  PackAddIntEx(p, "HubType", e->HubType, i, t->NumHub);
  PackAddIntEx(p, "NumSessions", e->NumSessions, i, t->NumHub);
  PackAddIntEx(p, "NumUsers", e->NumUsers, i, t->NumHub);
  PackAddIntEx(p, "NumGroups", e->NumGroups, i, t->NumHub);
  PackAddIntEx(p, "NumMacTables", e->NumMacTables, i, t->NumHub);
  PackAddIntEx(p, "NumIpTables", e->NumIpTables, i, t->NumHub);
  PackAddTime64Ex(p, "LastCommTime", e->LastCommTime, i, t->NumHub);
  PackAddTime64Ex(p, "CreatedTime", e->CreatedTime, i, t->NumHub);
  PackAddTime64Ex(p, "LastLoginTime", e->LastLoginTime, i, t->NumHub);
  PackAddIntEx(p, "NumLogin", e->NumLogin, i, t->NumHub);
  PackAddBoolEx(p, "IsTrafficFilled", e->IsTrafficFilled, i, t->NumHub);

  OutRpcTrafficEx(&e->Traffic, p, i, t->NumHub);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
