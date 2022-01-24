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
struct TYPE_3__ {int IpTablesHalt; int IpTablesInitOk; int /*<<< orphan*/ * IpTablesHaltEvent; int /*<<< orphan*/ * IpTablesThread; } ;
typedef  TYPE_1__ NATIVE_STACK ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(NATIVE_STACK *a)
{
	if (a->IpTablesThread == NULL)
	{
		return;
	}

	a->IpTablesHalt = true;
	FUNC2(a->IpTablesHaltEvent);

	FUNC3(a->IpTablesThread, INFINITE);

	FUNC1(a->IpTablesThread);
	FUNC0(a->IpTablesHaltEvent);

	a->IpTablesThread = NULL;
	a->IpTablesHaltEvent = NULL;
	a->IpTablesInitOk = false;
	a->IpTablesHalt = false;
}