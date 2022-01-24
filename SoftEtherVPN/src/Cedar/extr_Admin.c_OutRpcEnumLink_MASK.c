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
struct TYPE_5__ {size_t NumLink; TYPE_1__* Links; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  LastError; int /*<<< orphan*/  Connected; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Online; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_ENUM_LINK_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LINK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(PACK *p, RPC_ENUM_LINK *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "HubName", t->HubName);

	FUNC6(p, "LinkList");
	for (i = 0;i < t->NumLink;i++)
	{
		RPC_ENUM_LINK_ITEM *e = &t->Links[i];

		FUNC5(p, "AccountName", e->AccountName, i, t->NumLink);
		FUNC3(p, "ConnectedHubName", e->HubName, i, t->NumLink);
		FUNC3(p, "Hostname", e->Hostname, i, t->NumLink);
		FUNC0(p, "Online", e->Online, i, t->NumLink);
		FUNC4(p, "ConnectedTime", e->ConnectedTime, i, t->NumLink);
		FUNC0(p, "Connected", e->Connected, i, t->NumLink);
		FUNC1(p, "LastError", e->LastError, i, t->NumLink);
		FUNC3(p, "TargetHubName", e->HubName, i, t->NumLink);
	}
	FUNC6(p, NULL);
}