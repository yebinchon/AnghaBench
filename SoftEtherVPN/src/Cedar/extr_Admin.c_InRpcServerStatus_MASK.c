#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  MemInfo; int /*<<< orphan*/  Traffic; void* StartTime; void* AssignedClientLicensesTotal; void* AssignedBridgeLicensesTotal; void* AssignedClientLicenses; void* AssignedBridgeLicenses; void* CurrentTick; void* CurrentTime; void* NumGroups; void* NumUsers; void* NumIpTables; void* NumMacTables; void* NumSessionsRemote; void* NumSessionsLocal; void* NumSessionsTotal; void* NumHubDynamic; void* NumHubStatic; void* NumHubStandalone; void* NumHubTotal; void* NumTcpConnectionsRemote; void* NumTcpConnectionsLocal; void* NumTcpConnections; void* ServerType; } ;
typedef  TYPE_1__ RPC_SERVER_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_SERVER_STATUS *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_SERVER_STATUS));
	t->ServerType = FUNC2(p, "ServerType");
	t->NumTcpConnections = FUNC2(p, "NumTcpConnections");
	t->NumTcpConnectionsLocal = FUNC2(p, "NumTcpConnectionsLocal");
	t->NumTcpConnectionsRemote = FUNC2(p, "NumTcpConnectionsRemote");
	t->NumHubTotal = FUNC2(p, "NumHubTotal");
	t->NumHubStandalone = FUNC2(p, "NumHubStandalone");
	t->NumHubStatic = FUNC2(p, "NumHubStatic");
	t->NumHubDynamic = FUNC2(p, "NumHubDynamic");
	t->NumSessionsTotal = FUNC2(p, "NumSessionsTotal");
	t->NumSessionsLocal = FUNC2(p, "NumSessionsLocal");
	t->NumSessionsRemote = FUNC2(p, "NumSessionsRemote");
	t->NumMacTables = FUNC2(p, "NumMacTables");
	t->NumIpTables = FUNC2(p, "NumIpTables");
	t->NumUsers = FUNC2(p, "NumUsers");
	t->NumGroups = FUNC2(p, "NumGroups");
	t->CurrentTime = FUNC3(p, "CurrentTime");
	t->CurrentTick = FUNC3(p, "CurrentTick");
	t->AssignedBridgeLicenses = FUNC2(p, "AssignedBridgeLicenses");
	t->AssignedClientLicenses = FUNC2(p, "AssignedClientLicenses");
	t->AssignedBridgeLicensesTotal = FUNC2(p, "AssignedBridgeLicensesTotal");
	t->AssignedClientLicensesTotal = FUNC2(p, "AssignedClientLicensesTotal");
	t->StartTime = FUNC3(p, "StartTime");

	FUNC1(&t->Traffic, p);

	FUNC0(&t->MemInfo, p);
}