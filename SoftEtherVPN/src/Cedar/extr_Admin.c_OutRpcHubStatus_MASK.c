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
struct TYPE_3__ {int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  SecureNATEnabled; int /*<<< orphan*/  NumIpTables; int /*<<< orphan*/  NumMacTables; int /*<<< orphan*/  NumGroups; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  NumAccessLists; int /*<<< orphan*/  NumSessionsBridge; int /*<<< orphan*/  NumSessionsClient; int /*<<< orphan*/  NumSessions; int /*<<< orphan*/  HubType; int /*<<< orphan*/  Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_HUB_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(PACK *p, RPC_HUB_STATUS *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "HubName", t->HubName);
	FUNC1(p, "Online", t->Online);
	FUNC2(p, "HubType", t->HubType);
	FUNC2(p, "NumSessions", t->NumSessions);
	FUNC2(p, "NumSessionsClient", t->NumSessionsClient);
	FUNC2(p, "NumSessionsBridge", t->NumSessionsBridge);
	FUNC2(p, "NumAccessLists", t->NumAccessLists);
	FUNC2(p, "NumUsers", t->NumUsers);
	FUNC2(p, "NumGroups", t->NumGroups);
	FUNC2(p, "NumMacTables", t->NumMacTables);
	FUNC2(p, "NumIpTables", t->NumIpTables);
	FUNC1(p, "SecureNATEnabled", t->SecureNATEnabled);
	FUNC0(p, &t->Traffic);
	FUNC4(p, "LastCommTime", t->LastCommTime);
	FUNC4(p, "CreatedTime", t->CreatedTime);
	FUNC4(p, "LastLoginTime", t->LastLoginTime);
	FUNC2(p, "NumLogin", t->NumLogin);
}