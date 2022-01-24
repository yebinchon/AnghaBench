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
struct TYPE_4__ {int Ready; int /*<<< orphan*/  lock; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ COUNTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEW_COUNTER_COUNT ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

COUNTER *FUNC3()
{
	COUNTER *c;

	// Memory allocation
	c = FUNC1(sizeof(COUNTER));

	// Initialization
	c->Ready = true;
	c->c = 0;

	// Lock created
	c->lock = FUNC2();

	// KS
	FUNC0(KS_NEW_COUNTER_COUNT);

	return c;
}