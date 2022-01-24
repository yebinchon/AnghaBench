#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  Hub; } ;
struct TYPE_7__ {int /*<<< orphan*/  Cedar; int /*<<< orphan*/  IfList; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L3IfThread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(L3SW *s)
{
	UINT i;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC3(s->IfList);i++)
	{
		L3IF *f = FUNC2(s->IfList, i);
		THREAD *t;

		FUNC1(f);

		f->Hub = FUNC0(s->Cedar, f->HubName);
		t = FUNC4(L3IfThread, f);
		FUNC6(t);
		FUNC5(t);
	}
}