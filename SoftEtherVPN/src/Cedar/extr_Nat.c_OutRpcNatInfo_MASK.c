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
struct TYPE_3__ {int /*<<< orphan*/  MemInfo; int /*<<< orphan*/  OsInfo; int /*<<< orphan*/  NatHostName; int /*<<< orphan*/  NatBuildInt; int /*<<< orphan*/  NatVerInt; int /*<<< orphan*/  NatBuildInfoString; int /*<<< orphan*/  NatVersionString; int /*<<< orphan*/  NatProductName; } ;
typedef  TYPE_1__ RPC_NAT_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, RPC_NAT_INFO *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "NatProductName", t->NatProductName);
	FUNC3(p, "NatVersionString", t->NatVersionString);
	FUNC3(p, "NatBuildInfoString", t->NatBuildInfoString);
	FUNC2(p, "NatVerInt", t->NatVerInt);
	FUNC2(p, "NatBuildInt", t->NatBuildInt);
	FUNC3(p, "NatHostName", t->NatHostName);
	FUNC1(p, &t->OsInfo);
	FUNC0(p, &t->MemInfo);
}