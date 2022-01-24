#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct uthread {int dummy; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;
struct TYPE_5__ {scalar_t__ uthread; int /*<<< orphan*/  syscalls_unix; int /*<<< orphan*/  syscalls_mach; int /*<<< orphan*/  iotier_override; } ;

/* Variables and functions */
 scalar_t__ PLATFORM_SYSCALL_TRAP_NO ; 
 int /*<<< orphan*/  THROTTLE_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 TYPE_1__* FUNC1 () ; 
 struct proc* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,struct uthread*,struct proc*) ; 

__attribute__((used)) static void
FUNC12(arm_saved_state_t *state)
{
	int trap_no = FUNC3(state);
	thread_t thread = FUNC1();
	struct proc *p;

#define handle_svc_kprintf(x...) /* kprintf("handle_svc: " x) */

#define TRACE_SYSCALL 1
#if TRACE_SYSCALL
	FUNC10(state);
#endif

	thread->iotier_override = THROTTLE_LEVEL_NONE; /* Reset IO tier override before handling SVC from userspace */

	if (trap_no == (int)PLATFORM_SYSCALL_TRAP_NO) {
		FUNC9(state);
		FUNC8("Returned from platform_syscall()?");
	}

	FUNC6();

	if (trap_no < 0) {
		if (trap_no == -3) {
			FUNC4(state);
			return;
		} else if (trap_no == -4) {
			FUNC5(state);
			return;
		}

		/* Counting perhaps better in the handler, but this is how it's been done */
		thread->syscalls_mach++;
		FUNC7(state);
	} else {
		/* Counting perhaps better in the handler, but this is how it's been done */
		thread->syscalls_unix++;
		p = FUNC2(thread);

		FUNC0(p);

		FUNC11(state, thread, (struct uthread*)thread->uthread, p);
	}
}