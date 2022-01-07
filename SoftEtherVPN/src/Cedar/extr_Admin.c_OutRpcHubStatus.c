
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NumLogin; int LastLoginTime; int CreatedTime; int LastCommTime; int Traffic; int SecureNATEnabled; int NumIpTables; int NumMacTables; int NumGroups; int NumUsers; int NumAccessLists; int NumSessionsBridge; int NumSessionsClient; int NumSessions; int HubType; int Online; int HubName; } ;
typedef TYPE_1__ RPC_HUB_STATUS ;
typedef int PACK ;


 int OutRpcTraffic (int *,int *) ;
 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcHubStatus(PACK *p, RPC_HUB_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddBool(p, "Online", t->Online);
 PackAddInt(p, "HubType", t->HubType);
 PackAddInt(p, "NumSessions", t->NumSessions);
 PackAddInt(p, "NumSessionsClient", t->NumSessionsClient);
 PackAddInt(p, "NumSessionsBridge", t->NumSessionsBridge);
 PackAddInt(p, "NumAccessLists", t->NumAccessLists);
 PackAddInt(p, "NumUsers", t->NumUsers);
 PackAddInt(p, "NumGroups", t->NumGroups);
 PackAddInt(p, "NumMacTables", t->NumMacTables);
 PackAddInt(p, "NumIpTables", t->NumIpTables);
 PackAddBool(p, "SecureNATEnabled", t->SecureNATEnabled);
 OutRpcTraffic(p, &t->Traffic);
 PackAddTime64(p, "LastCommTime", t->LastCommTime);
 PackAddTime64(p, "CreatedTime", t->CreatedTime);
 PackAddTime64(p, "LastLoginTime", t->LastLoginTime);
 PackAddInt(p, "NumLogin", t->NumLogin);
}
