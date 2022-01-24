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
struct TYPE_4__ {int /*<<< orphan*/  MemInfo; int /*<<< orphan*/  OsInfo; int /*<<< orphan*/  NatHostName; void* NatBuildInt; void* NatVerInt; int /*<<< orphan*/  NatBuildInfoString; int /*<<< orphan*/  NatVersionString; int /*<<< orphan*/  NatProductName; } ;
typedef  TYPE_1__ RPC_NAT_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_NAT_INFO *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_NAT_INFO));
	FUNC3(p, "NatProductName", t->NatProductName, sizeof(t->NatProductName));
	FUNC3(p, "NatVersionString", t->NatVersionString, sizeof(t->NatVersionString));
	FUNC3(p, "NatBuildInfoString", t->NatBuildInfoString, sizeof(t->NatBuildInfoString));
	t->NatVerInt = FUNC2(p, "NatVerInt");
	t->NatBuildInt = FUNC2(p, "NatBuildInt");
	FUNC3(p, "NatHostName", t->NatHostName, sizeof(t->NatHostName));
	FUNC1(&t->OsInfo, p);
	FUNC0(&t->MemInfo, p);
}