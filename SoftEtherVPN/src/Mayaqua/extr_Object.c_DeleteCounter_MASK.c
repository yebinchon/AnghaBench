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
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ COUNTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  KS_CURRENT_COUNT ; 
 int /*<<< orphan*/  KS_DELETE_COUNTER_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(COUNTER *c)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	// KS
	FUNC2(KS_DELETE_COUNTER_COUNT);
	FUNC3(KS_CURRENT_COUNT, c->c);

	FUNC0(c->lock);
	FUNC1(c);
}