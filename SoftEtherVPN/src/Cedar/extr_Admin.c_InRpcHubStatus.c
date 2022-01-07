
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* NumLogin; void* LastLoginTime; void* CreatedTime; void* LastCommTime; int Traffic; void* SecureNATEnabled; void* NumIpTables; void* NumMacTables; void* NumGroups; void* NumUsers; void* NumAccessLists; void* NumSessionsBridge; void* NumSessionsClient; void* NumSessions; void* HubType; void* Online; int HubName; } ;
typedef TYPE_1__ RPC_HUB_STATUS ;
typedef int PACK ;


 int InRpcTraffic (int *,int *) ;
 void* PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcHubStatus(RPC_HUB_STATUS *t, PACK *p)
{
 Zero(t, sizeof(RPC_HUB_STATUS));

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->Online = PackGetBool(p, "Online");
 t->HubType = PackGetInt(p, "HubType");
 t->NumSessions = PackGetInt(p, "NumSessions");
 t->NumSessionsClient = PackGetInt(p, "NumSessionsClient");
 t->NumSessionsBridge = PackGetInt(p, "NumSessionsBridge");
 t->NumAccessLists = PackGetInt(p, "NumAccessLists");
 t->NumUsers = PackGetInt(p, "NumUsers");
 t->NumGroups = PackGetInt(p, "NumGroups");
 t->NumMacTables = PackGetInt(p, "NumMacTables");
 t->NumIpTables = PackGetInt(p, "NumIpTables");
 t->SecureNATEnabled = PackGetBool(p, "SecureNATEnabled");
 InRpcTraffic(&t->Traffic, p);
 t->LastCommTime = PackGetInt64(p, "LastCommTime");
 t->CreatedTime = PackGetInt64(p, "CreatedTime");
 t->LastLoginTime = PackGetInt64(p, "LastLoginTime");
 t->NumLogin = PackGetInt(p, "NumLogin");
}
