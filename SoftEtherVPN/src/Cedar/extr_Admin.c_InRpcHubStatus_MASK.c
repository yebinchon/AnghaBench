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
struct TYPE_4__ {void* NumLogin; void* LastLoginTime; void* CreatedTime; void* LastCommTime; int /*<<< orphan*/  Traffic; void* SecureNATEnabled; void* NumIpTables; void* NumMacTables; void* NumGroups; void* NumUsers; void* NumAccessLists; void* NumSessionsBridge; void* NumSessionsClient; void* NumSessions; void* HubType; void* Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_HUB_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void FUNC6(RPC_HUB_STATUS *t, PACK *p)
{
	FUNC5(t, sizeof(RPC_HUB_STATUS));
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(p, "HubName", t->HubName, sizeof(t->HubName));
	t->Online = FUNC1(p, "Online");
	t->HubType = FUNC2(p, "HubType");
	t->NumSessions = FUNC2(p, "NumSessions");
	t->NumSessionsClient = FUNC2(p, "NumSessionsClient");
	t->NumSessionsBridge = FUNC2(p, "NumSessionsBridge");
	t->NumAccessLists = FUNC2(p, "NumAccessLists");
	t->NumUsers = FUNC2(p, "NumUsers");
	t->NumGroups = FUNC2(p, "NumGroups");
	t->NumMacTables = FUNC2(p, "NumMacTables");
	t->NumIpTables = FUNC2(p, "NumIpTables");
	t->SecureNATEnabled = FUNC1(p, "SecureNATEnabled");
	FUNC0(&t->Traffic, p);
	t->LastCommTime = FUNC3(p, "LastCommTime");
	t->CreatedTime = FUNC3(p, "CreatedTime");
	t->LastLoginTime = FUNC3(p, "LastLoginTime");
	t->NumLogin = FUNC2(p, "NumLogin");
}