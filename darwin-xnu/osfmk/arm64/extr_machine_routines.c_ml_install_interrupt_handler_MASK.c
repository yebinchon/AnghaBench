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
struct TYPE_3__ {int interrupt_source; int /*<<< orphan*/  interrupts_enabled; void* interrupt_refCon; int /*<<< orphan*/  interrupt_handler; void* interrupt_target; void* interrupt_nub; } ;
typedef  TYPE_1__ cpu_data_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  IOInterruptHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kPEAcquireScreen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void 
FUNC3(
			     void *nub,
			     int source,
			     void *target,
			     IOInterruptHandler handler,
			     void *refCon)
{
	cpu_data_t     *cpu_data_ptr;
	boolean_t       current_state;

	current_state = FUNC2(FALSE);
	cpu_data_ptr = FUNC0();

	cpu_data_ptr->interrupt_nub = nub;
	cpu_data_ptr->interrupt_source = source;
	cpu_data_ptr->interrupt_target = target;
	cpu_data_ptr->interrupt_handler = handler;
	cpu_data_ptr->interrupt_refCon = refCon;

	cpu_data_ptr->interrupts_enabled = TRUE;
	(void) FUNC2(current_state);

	FUNC1(NULL, kPEAcquireScreen);
}