#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {size_t NumHub; TYPE_1__* Hubs; } ;
struct TYPE_4__ {int /*<<< orphan*/  Traffic; int /*<<< orphan*/  IsTrafficFilled; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  NumIpTables; int /*<<< orphan*/  NumMacTables; int /*<<< orphan*/  NumGroups; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  NumSessions; int /*<<< orphan*/  HubType; int /*<<< orphan*/  Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ENUM_HUB_ITEM ;
typedef  TYPE_2__ RPC_ENUM_HUB ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(PACK *p, RPC_ENUM_HUB *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(p, "HubList");
	for (i = 0;i < t->NumHub;i++)
	{
		RPC_ENUM_HUB_ITEM *e = &t->Hubs[i];

		FUNC3(p, "HubName", e->HubName, i, t->NumHub);
		FUNC1(p, "Online", e->Online, i, t->NumHub);
		FUNC2(p, "HubType", e->HubType, i, t->NumHub);
		FUNC2(p, "NumSessions", e->NumSessions, i, t->NumHub);
		FUNC2(p, "NumUsers", e->NumUsers, i, t->NumHub);
		FUNC2(p, "NumGroups", e->NumGroups, i, t->NumHub);
		FUNC2(p, "NumMacTables", e->NumMacTables, i, t->NumHub);
		FUNC2(p, "NumIpTables", e->NumIpTables, i, t->NumHub);
		FUNC4(p, "LastCommTime", e->LastCommTime, i, t->NumHub);
		FUNC4(p, "CreatedTime", e->CreatedTime, i, t->NumHub);
		FUNC4(p, "LastLoginTime", e->LastLoginTime, i, t->NumHub);
		FUNC2(p, "NumLogin", e->NumLogin, i, t->NumHub);
		FUNC1(p, "IsTrafficFilled", e->IsTrafficFilled, i, t->NumHub);

		FUNC0(&e->Traffic, p, i, t->NumHub);
	}
	FUNC5(p, NULL);
}