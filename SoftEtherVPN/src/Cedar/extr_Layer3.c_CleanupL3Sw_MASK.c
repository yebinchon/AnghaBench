#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  TableList; int /*<<< orphan*/  IfList; } ;
typedef  TYPE_1__ L3TABLE ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_1__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(L3SW *s)
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
		FUNC1(f);
	}
	FUNC4(s->IfList);

	for (i = 0;i < FUNC3(s->TableList);i++)
	{
		L3TABLE *t = FUNC2(s->TableList, i);
		FUNC1(t);
	}
	FUNC4(s->TableList);

	FUNC0(s->lock);
	FUNC1(s);
}