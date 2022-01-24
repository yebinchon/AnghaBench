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
struct TYPE_3__ {int num_reserved; int sorted; int /*<<< orphan*/ * cmp; void* p; scalar_t__ Param1; scalar_t__ num_item; int /*<<< orphan*/ * ref; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ LIST ;
typedef  int /*<<< orphan*/  COMPARE ;

/* Variables and functions */
 int INIT_NUM_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWLIST_COUNT ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 

LIST *FUNC5(COMPARE *cmp, bool fast, bool fast_malloc)
{
	LIST *o;

	if (fast_malloc == false)
	{
		o = FUNC1(sizeof(LIST));
	}
	else
	{
		o = FUNC2(sizeof(LIST));
	}

	if (fast == false)
	{
		o->lock = FUNC3();
		o->ref = FUNC4();
	}
	else
	{
		o->lock = NULL;
		o->ref = NULL;
	}
	o->num_item = 0;
	o->num_reserved = INIT_NUM_RESERVED;
	o->Param1 = 0;

	if (fast_malloc == false)
	{
		o->p = FUNC1(sizeof(void *) * o->num_reserved);
	}
	else
	{
		o->p = FUNC2(sizeof(void *) * o->num_reserved);
	}

	o->cmp = cmp;
	o->sorted = true;

	// KS
	FUNC0(KS_NEWLIST_COUNT);

	return o;
}