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
struct TYPE_7__ {int NumLink; TYPE_1__* Links; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  LastError; void* Connected; int /*<<< orphan*/  ConnectedTime; void* Online; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_ENUM_LINK_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LINK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC8 (int) ; 

void FUNC9(RPC_ENUM_LINK *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC7(t, sizeof(RPC_ENUM_LINK));
	FUNC4(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumLink = FUNC1(p, "AccountName");
	t->Links = FUNC8(sizeof(RPC_ENUM_LINK_ITEM) * t->NumLink);

	for (i = 0;i < t->NumLink;i++)
	{
		RPC_ENUM_LINK_ITEM *e = &t->Links[i];

		FUNC6(p, "AccountName", e->AccountName, sizeof(e->AccountName), i);
		FUNC5(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
		FUNC5(p, "ConnectedHubName", e->HubName, sizeof(e->HubName), i);
		e->Online = FUNC0(p, "Online", i);
		e->ConnectedTime = FUNC2(p, "ConnectedTime", i);
		e->Connected = FUNC0(p, "Connected", i);
		e->LastError = FUNC3(p, "LastError", i);
		FUNC5(p, "LinkHubName", e->HubName, sizeof(e->HubName), i);
	}
}