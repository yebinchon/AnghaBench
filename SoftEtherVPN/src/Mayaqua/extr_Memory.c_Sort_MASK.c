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
struct TYPE_3__ {int sorted; int /*<<< orphan*/ * cmp; int /*<<< orphan*/  num_item; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_SORT_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int (*) (void const*,void const*)) ; 

void FUNC2(LIST *o)
{
	// Validate arguments
	if (o == NULL || o->cmp == NULL)
	{
		return;
	}

	FUNC1(o->p, o->num_item, sizeof(void *), (int(*)(const void *, const void *))o->cmp);
	o->sorted = true;

	// KS
	FUNC0(KS_SORT_COUNT);
}