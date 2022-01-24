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
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_3__ {int /*<<< orphan*/ * windings; scalar_t__* freewindings; } ;
typedef  TYPE_1__ pstack_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

winding_t *FUNC1 (pstack_t *stack)
{
	int		i;

	for (i=0 ; i<3 ; i++)
	{
		if (stack->freewindings[i])
		{
			stack->freewindings[i] = 0;
			return &stack->windings[i];
		}
	}

	FUNC0 ("AllocStackWinding: failed");

	return NULL;
}