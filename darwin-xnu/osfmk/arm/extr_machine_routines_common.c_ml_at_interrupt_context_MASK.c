#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/ * cpu_int_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

boolean_t
FUNC2(void)
{
	/* Do not use a stack-based check here, as the top-level exception handler
	 * is free to use some other stack besides the per-CPU interrupt stack.
	 * Interrupts should always be disabled if we're at interrupt context.
	 * Check that first, as we may be in a preemptible non-interrupt context, in
	 * which case we could be migrated to a different CPU between obtaining
	 * the per-cpu data pointer and loading cpu_int_state.  We then might end
	 * up checking the interrupt state of a different CPU, resulting in a false
	 * positive.  But if interrupts are disabled, we also know we cannot be
	 * preempted. */
	return (!FUNC1() && (FUNC0()->cpu_int_state != NULL));
}