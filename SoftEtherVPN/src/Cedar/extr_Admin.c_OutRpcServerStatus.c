
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MemInfo; int Traffic; int StartTime; int AssignedClientLicensesTotal; int AssignedBridgeLicensesTotal; int AssignedClientLicenses; int AssignedBridgeLicenses; int CurrentTick; int CurrentTime; int NumGroups; int NumUsers; int NumIpTables; int NumMacTables; int NumTcpConnectionsRemote; int NumTcpConnectionsLocal; int NumTcpConnections; int NumSessionsRemote; int NumSessionsLocal; int NumSessionsTotal; int NumHubDynamic; int NumHubStatic; int NumHubStandalone; int NumHubTotal; int ServerType; } ;
typedef TYPE_1__ RPC_SERVER_STATUS ;
typedef int PACK ;


 int OutRpcMemInfo (int *,int *) ;
 int OutRpcTraffic (int *,int *) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddInt64 (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcServerStatus(PACK *p, RPC_SERVER_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "ServerType", t->ServerType);
 PackAddInt(p, "NumHubTotal", t->NumHubTotal);
 PackAddInt(p, "NumHubStandalone", t->NumHubStandalone);
 PackAddInt(p, "NumHubStatic", t->NumHubStatic);
 PackAddInt(p, "NumHubDynamic", t->NumHubDynamic);
 PackAddInt(p, "NumSessionsTotal", t->NumSessionsTotal);
 PackAddInt(p, "NumSessionsLocal", t->NumSessionsLocal);
 PackAddInt(p, "NumSessionsRemote", t->NumSessionsRemote);
 PackAddInt(p, "NumTcpConnections", t->NumTcpConnections);
 PackAddInt(p, "NumTcpConnectionsLocal", t->NumTcpConnectionsLocal);
 PackAddInt(p, "NumTcpConnectionsRemote", t->NumTcpConnectionsRemote);
 PackAddInt(p, "NumMacTables", t->NumMacTables);
 PackAddInt(p, "NumIpTables", t->NumIpTables);
 PackAddInt(p, "NumUsers", t->NumUsers);
 PackAddInt(p, "NumGroups", t->NumGroups);
 PackAddTime64(p, "CurrentTime", t->CurrentTime);
 PackAddInt64(p, "CurrentTick", t->CurrentTick);
 PackAddInt(p, "AssignedBridgeLicenses", t->AssignedBridgeLicenses);
 PackAddInt(p, "AssignedClientLicenses", t->AssignedClientLicenses);
 PackAddInt(p, "AssignedBridgeLicensesTotal", t->AssignedBridgeLicensesTotal);
 PackAddInt(p, "AssignedClientLicensesTotal", t->AssignedClientLicensesTotal);
 PackAddTime64(p, "StartTime", t->StartTime);

 OutRpcTraffic(p, &t->Traffic);

 OutRpcMemInfo(p, &t->MemInfo);
}
