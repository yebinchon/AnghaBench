#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_10__ {int /*<<< orphan*/ * cpu_int_state; } ;
struct TYPE_9__ {uintptr_t kernel_stack; } ;
struct TYPE_8__ {int cs; uintptr_t uesp; } ;
struct TYPE_6__ {int cs; uintptr_t rsp; } ;
struct TYPE_7__ {TYPE_1__ isf; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int SEL_PL ; 
 int SEL_PL_U ; 
 TYPE_5__* FUNC0 () ; 
 TYPE_4__* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 uintptr_t kernel_stack_size ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) __attribute__((used))
static kern_return_t
FUNC5(uintptr_t *sp_val)
{
	x86_saved_state_t *state;
	uintptr_t sp;
	bool state_64;
	uint64_t cs;
	uintptr_t top, bottom;

	state = FUNC0()->cpu_int_state;
	if (!state) {
		return KERN_FAILURE;
	}

	state_64 = FUNC2(state);

	if (state_64) {
		cs = FUNC4(state)->isf.cs;
	} else {
		cs = FUNC3(state)->cs;
	}
	/* return early if interrupted a thread in user space */
	if ((cs & SEL_PL) == SEL_PL_U) {
		return KERN_FAILURE;
	}

	if (state_64) {
		sp = FUNC4(state)->isf.rsp;
	} else {
		sp = FUNC3(state)->uesp;
	}

	/* make sure the stack pointer is pointing somewhere in this stack */
	bottom = FUNC1()->kernel_stack;
	top = bottom + kernel_stack_size;
	if (sp >= bottom && sp < top) {
	    return KERN_FAILURE;
	}

	*sp_val = *(uintptr_t *)sp;
	return KERN_SUCCESS;
}