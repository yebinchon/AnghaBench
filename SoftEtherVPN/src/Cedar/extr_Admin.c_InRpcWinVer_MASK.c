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
struct TYPE_4__ {int /*<<< orphan*/  Title; void* ServicePack; void* Build; void* VerMinor; void* VerMajor; void* IsBeta; void* IsServer; void* IsNT; void* IsWindows; } ;
typedef  TYPE_1__ RPC_WINVER ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(RPC_WINVER *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(RPC_WINVER));

	t->IsWindows = FUNC0(p, "V_IsWindows");
	t->IsNT = FUNC0(p, "V_IsNT");
	t->IsServer = FUNC0(p, "V_IsServer");
	t->IsBeta = FUNC0(p, "V_IsBeta");
	t->VerMajor = FUNC1(p, "V_VerMajor");
	t->VerMinor = FUNC1(p, "V_VerMinor");
	t->Build = FUNC1(p, "V_Build");
	t->ServicePack = FUNC1(p, "V_ServicePack");
	FUNC2(p, "V_Title", t->Title, sizeof(t->Title));
}