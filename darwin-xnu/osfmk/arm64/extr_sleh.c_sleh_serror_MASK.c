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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;
struct TYPE_4__ {int /*<<< orphan*/  ss; } ;
typedef  TYPE_1__ arm_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

void
FUNC4(arm_context_t *context, uint32_t esr, vm_offset_t far)
{
	arm_saved_state_t 	  	*state = &context->ss;
#if DEVELOPMENT || DEBUG
	int preemption_level = get_preemption_level();
#endif

	FUNC0(context);
	FUNC1(state, esr, far);
#if DEVELOPMENT || DEBUG
	if (preemption_level != get_preemption_level())
		panic("serror changed preemption level from %d to %d", preemption_level, get_preemption_level());
#endif
}