#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  scalar_t__ thread_state_t ;
struct arm_saved_state32 {int /*<<< orphan*/  cpsr; } ;
struct arm_saved_state {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  arm_thread_state_t ;
struct TYPE_8__ {struct arm_saved_state* upcb; } ;
struct TYPE_9__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  PSR64_USER32_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 () ; 
 struct arm_saved_state32* FUNC2 (struct arm_saved_state*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct arm_saved_state*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

kern_return_t
FUNC9(thread_t thread, thread_state_t tstate)
{
	arm_thread_state_t *state;
	struct arm_saved_state *saved_state;
	struct arm_saved_state32 *saved_state_32;
	thread_t curth = FUNC1();
	spl_t s=0;

	FUNC0(!FUNC5(thread));

	saved_state = thread->machine.upcb;
	saved_state_32 = FUNC2(saved_state);

	state = (arm_thread_state_t *)tstate;

	if (curth != thread) {
		s = FUNC3();
		FUNC6(thread);
	}

	/*
	 * do not zero saved_state, it can be concurrently accessed
	 * and zero is not a valid state for some of the registers,
	 * like sp.
	 */
	FUNC7(state, saved_state);
	saved_state_32->cpsr = PSR64_USER32_DEFAULT;

	if (curth != thread) {
		FUNC8(thread);
		FUNC4(s);
	}

	return KERN_SUCCESS;
}