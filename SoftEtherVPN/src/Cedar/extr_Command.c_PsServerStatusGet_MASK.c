#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  vv ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_6__ {scalar_t__ TotalMemory; scalar_t__ UsedMemory; scalar_t__ FreeMemory; scalar_t__ TotalPhys; scalar_t__ UsedPhys; scalar_t__ FreePhys; } ;
struct TYPE_7__ {scalar_t__ ServerType; char* CurrentTick; TYPE_1__ MemInfo; int /*<<< orphan*/  CurrentTime; int /*<<< orphan*/  StartTime; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  AssignedBridgeLicensesTotal; int /*<<< orphan*/  AssignedClientLicensesTotal; int /*<<< orphan*/  AssignedBridgeLicenses; int /*<<< orphan*/  AssignedClientLicenses; int /*<<< orphan*/  NumGroups; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  NumIpTables; int /*<<< orphan*/  NumMacTables; int /*<<< orphan*/  NumSessionsRemote; int /*<<< orphan*/  NumSessionsLocal; int /*<<< orphan*/  NumSessionsTotal; int /*<<< orphan*/  NumHubDynamic; int /*<<< orphan*/  NumHubStatic; int /*<<< orphan*/  NumHubTotal; int /*<<< orphan*/  NumTcpConnectionsRemote; int /*<<< orphan*/  NumTcpConnectionsLocal; int /*<<< orphan*/  NumTcpConnections; } ;
typedef  TYPE_2__ RPC_SERVER_STATUS ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 char* FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret;
	RPC_SERVER_STATUS t;
	wchar_t tmp[MAX_PATH];
	char tmp2[MAX_PATH];
	CT *ct;

	o = FUNC9(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));
	ret = FUNC10(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		FUNC1(c, ret);
		FUNC6(o);
		return ret;
	}

	ct = FUNC5();

	FUNC4(ct, FUNC17("SM_STATUS_COLUMN_1"), false);
	FUNC4(ct, FUNC17("SM_STATUS_COLUMN_2"), false);

	// Type of server
	FUNC3(ct, FUNC17("SM_ST_SERVER_TYPE"),
		t.ServerType == SERVER_TYPE_STANDALONE ? FUNC17("SM_SERVER_STANDALONE") :
		t.ServerType == SERVER_TYPE_FARM_MEMBER ? FUNC17("SM_FARM_MEMBER") : FUNC17("SM_FARM_CONTROLLER"));

	// Number of TCP connections
	FUNC15(tmp, t.NumTcpConnections);
	FUNC3(ct, FUNC17("SM_ST_NUM_TCP"), tmp);

	if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		// Number of local TCP connections
		FUNC15(tmp, t.NumTcpConnectionsLocal);
		FUNC3(ct, FUNC17("SM_ST_NUM_TCP_LOCAL"), tmp);

		// Number of remote TCP connections
		FUNC15(tmp, t.NumTcpConnectionsRemote);
		FUNC3(ct, FUNC17("SM_ST_NUM_TCP_REMOTE"), tmp);
	}

	// Number of Virtual HUBs
	FUNC15(tmp, t.NumHubTotal);
	FUNC3(ct, FUNC17("SM_ST_NUM_HUB_TOTAL"), tmp);

	if (t.ServerType != SERVER_TYPE_STANDALONE)
	{
		// Number of static HUBs
		FUNC15(tmp, t.NumHubStatic);
		FUNC3(ct, FUNC17("SM_ST_NUM_HUB_STATIC"), tmp);

		// Number of dynamic HUBs
		FUNC15(tmp, t.NumHubDynamic);
		FUNC3(ct, FUNC17("SM_ST_NUM_HUB_DYNAMIC"), tmp);
	}

	// Number of sessions
	FUNC15(tmp, t.NumSessionsTotal);
	FUNC3(ct, FUNC17("SM_ST_NUM_SESSION_TOTAL"), tmp);

	if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		// Number of local sessions
		FUNC15(tmp, t.NumSessionsLocal);
		FUNC3(ct, FUNC17("SM_ST_NUM_SESSION_LOCAL"), tmp);

		// Number of remote sessions
		FUNC15(tmp, t.NumSessionsRemote);
		FUNC3(ct, FUNC17("SM_ST_NUM_SESSION_REMOTE"), tmp);
	}

	// Number of MAC tables
	FUNC15(tmp, t.NumMacTables);
	FUNC3(ct, FUNC17("SM_ST_NUM_MAC_TABLE"), tmp);

	// Number of IP tables
	FUNC15(tmp, t.NumIpTables);
	FUNC3(ct, FUNC17("SM_ST_NUM_IP_TABLE"), tmp);

	// Number of users
	FUNC15(tmp, t.NumUsers);
	FUNC3(ct, FUNC17("SM_ST_NUM_USERS"), tmp);

	// Number of groups
	FUNC15(tmp, t.NumGroups);
	FUNC3(ct, FUNC17("SM_ST_NUM_GROUPS"), tmp);

	// Number of assigned licenses
	FUNC15(tmp, t.AssignedClientLicenses);
	FUNC3(ct, FUNC17("SM_ST_CLIENT_LICENSE"), tmp);

	FUNC15(tmp, t.AssignedBridgeLicenses);
	FUNC3(ct, FUNC17("SM_ST_BRIDGE_LICENSE"), tmp);

	if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		FUNC15(tmp, t.AssignedClientLicensesTotal);
		FUNC3(ct, FUNC17("SM_ST_CLIENT_LICENSE_EX"), tmp);

		FUNC15(tmp, t.AssignedBridgeLicensesTotal);
		FUNC3(ct, FUNC17("SM_ST_BRIDGE_LICENSE_EX"), tmp);
	}

	// Traffic
	FUNC0(ct, &t.Traffic);

	// Server start-up time
	FUNC7(tmp, sizeof(tmp), FUNC12(t.StartTime), NULL);
	FUNC3(ct, FUNC17("SM_ST_START_TIME"), tmp);

	// Current time
	FUNC8(tmp2, sizeof(tmp2), FUNC12(t.CurrentTime));
	FUNC11(tmp, sizeof(tmp), tmp2);
	FUNC3(ct, FUNC17("SM_ST_CURRENT_TIME"), tmp);

	// Tick value
	FUNC14(tmp, sizeof(tmp), L"%I64u", t.CurrentTick);
	FUNC3(ct, FUNC17("SM_ST_CURRENT_TICK"), tmp);

	// Memory information
	if (t.MemInfo.TotalMemory != 0)
	{
		char vv[128];

		FUNC13(vv, sizeof(vv), t.MemInfo.TotalMemory);
		FUNC14(tmp, sizeof(tmp), FUNC17("SM_ST_RAM_SIZE_KB"), vv);
		FUNC3(ct, FUNC17("SM_ST_TOTAL_MEMORY"), tmp);

		FUNC13(vv, sizeof(vv), t.MemInfo.UsedMemory);
		FUNC14(tmp, sizeof(tmp), FUNC17("SM_ST_RAM_SIZE_KB"), vv);
		FUNC3(ct, FUNC17("SM_ST_USED_MEMORY"), tmp);

		FUNC13(vv, sizeof(vv), t.MemInfo.FreeMemory);
		FUNC14(tmp, sizeof(tmp), FUNC17("SM_ST_RAM_SIZE_KB"), vv);
		FUNC3(ct, FUNC17("SM_ST_FREE_MEMORY"), tmp);

		FUNC13(vv, sizeof(vv), t.MemInfo.TotalPhys);
		FUNC14(tmp, sizeof(tmp), FUNC17("SM_ST_RAM_SIZE_KB"), vv);
		FUNC3(ct, FUNC17("SM_ST_TOTAL_PHYS"), tmp);

		FUNC13(vv, sizeof(vv), t.MemInfo.UsedPhys);
		FUNC14(tmp, sizeof(tmp), FUNC17("SM_ST_RAM_SIZE_KB"), vv);
		FUNC3(ct, FUNC17("SM_ST_USED_PHYS"), tmp);

		FUNC13(vv, sizeof(vv), t.MemInfo.FreePhys);
		FUNC14(tmp, sizeof(tmp), FUNC17("SM_ST_RAM_SIZE_KB"), vv);
		FUNC3(ct, FUNC17("SM_ST_FREE_PHYS"), tmp);
	}

	FUNC2(ct, c);

	FUNC6(o);

	return 0;
}