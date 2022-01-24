#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int NumHub; TYPE_1__* Hubs; } ;
struct TYPE_6__ {int /*<<< orphan*/  Traffic; void* IsTrafficFilled; void* NumLogin; void* LastLoginTime; void* CreatedTime; void* LastCommTime; void* NumIpTables; void* NumMacTables; void* NumGroups; void* NumUsers; void* NumSessions; void* HubType; void* Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ENUM_HUB_ITEM ;
typedef  TYPE_2__ RPC_ENUM_HUB ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC7 (int) ; 

void FUNC8(RPC_ENUM_HUB *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC6(t, sizeof(RPC_ENUM_HUB));
	t->NumHub = FUNC2(p, "HubName");
	t->Hubs = FUNC7(sizeof(RPC_ENUM_HUB_ITEM) * t->NumHub);

	for (i = 0;i < t->NumHub;i++)
	{
		RPC_ENUM_HUB_ITEM *e = &t->Hubs[i];

		FUNC5(p, "HubName", e->HubName, sizeof(e->HubName), i);
		e->Online = FUNC1(p, "Online", i);
		e->HubType = FUNC4(p, "HubType", i);
		e->NumSessions = FUNC4(p, "NumSessions", i);
		e->NumUsers = FUNC4(p, "NumUsers", i);
		e->NumGroups = FUNC4(p, "NumGroups", i);
		e->NumMacTables = FUNC4(p, "NumMacTables", i);
		e->NumIpTables = FUNC4(p, "NumIpTables", i);
		e->LastCommTime = FUNC3(p, "LastCommTime", i);
		e->CreatedTime = FUNC3(p, "CreatedTime", i);
		e->LastLoginTime = FUNC3(p, "LastLoginTime", i);
		e->NumLogin = FUNC4(p, "NumLogin", i);
		e->IsTrafficFilled = FUNC1(p, "IsTrafficFilled", i);

		FUNC0(&e->Traffic, p, i);
	}
}