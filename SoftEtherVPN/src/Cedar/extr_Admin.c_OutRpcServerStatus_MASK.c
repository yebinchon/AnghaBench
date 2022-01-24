#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  MemInfo; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  StartTime; int /*<<< orphan*/  AssignedClientLicensesTotal; int /*<<< orphan*/  AssignedBridgeLicensesTotal; int /*<<< orphan*/  AssignedClientLicenses; int /*<<< orphan*/  AssignedBridgeLicenses; int /*<<< orphan*/  CurrentTick; int /*<<< orphan*/  CurrentTime; int /*<<< orphan*/  NumGroups; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  NumIpTables; int /*<<< orphan*/  NumMacTables; int /*<<< orphan*/  NumTcpConnectionsRemote; int /*<<< orphan*/  NumTcpConnectionsLocal; int /*<<< orphan*/  NumTcpConnections; int /*<<< orphan*/  NumSessionsRemote; int /*<<< orphan*/  NumSessionsLocal; int /*<<< orphan*/  NumSessionsTotal; int /*<<< orphan*/  NumHubDynamic; int /*<<< orphan*/  NumHubStatic; int /*<<< orphan*/  NumHubStandalone; int /*<<< orphan*/  NumHubTotal; int /*<<< orphan*/  ServerType; } ;
typedef  TYPE_1__ RPC_SERVER_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(PACK *p, RPC_SERVER_STATUS *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "ServerType", t->ServerType);
	FUNC2(p, "NumHubTotal", t->NumHubTotal);
	FUNC2(p, "NumHubStandalone", t->NumHubStandalone);
	FUNC2(p, "NumHubStatic", t->NumHubStatic);
	FUNC2(p, "NumHubDynamic", t->NumHubDynamic);
	FUNC2(p, "NumSessionsTotal", t->NumSessionsTotal);
	FUNC2(p, "NumSessionsLocal", t->NumSessionsLocal);
	FUNC2(p, "NumSessionsRemote", t->NumSessionsRemote);
	FUNC2(p, "NumTcpConnections", t->NumTcpConnections);
	FUNC2(p, "NumTcpConnectionsLocal", t->NumTcpConnectionsLocal);
	FUNC2(p, "NumTcpConnectionsRemote", t->NumTcpConnectionsRemote);
	FUNC2(p, "NumMacTables", t->NumMacTables);
	FUNC2(p, "NumIpTables", t->NumIpTables);
	FUNC2(p, "NumUsers", t->NumUsers);
	FUNC2(p, "NumGroups", t->NumGroups);
	FUNC4(p, "CurrentTime", t->CurrentTime);
	FUNC3(p, "CurrentTick", t->CurrentTick);
	FUNC2(p, "AssignedBridgeLicenses", t->AssignedBridgeLicenses);
	FUNC2(p, "AssignedClientLicenses", t->AssignedClientLicenses);
	FUNC2(p, "AssignedBridgeLicensesTotal", t->AssignedBridgeLicensesTotal);
	FUNC2(p, "AssignedClientLicensesTotal", t->AssignedClientLicensesTotal);
	FUNC4(p, "StartTime", t->StartTime);

	FUNC1(p, &t->Traffic);

	FUNC0(p, &t->MemInfo);
}