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
struct TYPE_4__ {int /*<<< orphan*/ * lock; struct TYPE_4__* p; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  KS_FREELIST_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(LIST *o)
{
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	FUNC1(o->p);
	if (o->lock != NULL)
	{
		FUNC0(o->lock);
	}
	FUNC1(o);

	// KS
	FUNC2(KS_FREELIST_COUNT);
}