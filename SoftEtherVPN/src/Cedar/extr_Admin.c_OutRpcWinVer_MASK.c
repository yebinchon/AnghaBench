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
struct TYPE_3__ {int /*<<< orphan*/  Title; int /*<<< orphan*/  ServicePack; int /*<<< orphan*/  Build; int /*<<< orphan*/  VerMinor; int /*<<< orphan*/  VerMajor; int /*<<< orphan*/  IsBeta; int /*<<< orphan*/  IsServer; int /*<<< orphan*/  IsNT; int /*<<< orphan*/  IsWindows; } ;
typedef  TYPE_1__ RPC_WINVER ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, RPC_WINVER *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "V_IsWindows", t->IsWindows);
	FUNC0(p, "V_IsNT", t->IsNT);
	FUNC0(p, "V_IsServer", t->IsServer);
	FUNC0(p, "V_IsBeta", t->IsBeta);
	FUNC1(p, "V_VerMajor", t->VerMajor);
	FUNC1(p, "V_VerMinor", t->VerMinor);
	FUNC1(p, "V_Build", t->Build);
	FUNC1(p, "V_ServicePack", t->ServicePack);
	FUNC2(p, "V_Title", t->Title);
}