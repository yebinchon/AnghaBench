#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ thread_t ;
struct semaphore_signal_thread_trap_args {scalar_t__ signal_name; scalar_t__ thread_name; } ;
typedef  int /*<<< orphan*/  semaphore_t ;
typedef  scalar_t__ mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  SEMAPHORE_OPTION_NONE ; 
 scalar_t__ THREAD_NULL ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

kern_return_t
FUNC5(
	struct semaphore_signal_thread_trap_args *args)
{
	mach_port_name_t sema_name = args->signal_name;
	mach_port_name_t thread_name = args->thread_name;
	semaphore_t	semaphore;
	thread_t	thread;
	kern_return_t	kr;

	/* 
	 * MACH_PORT_NULL is not an error. It means that we want to
	 * select any one thread that is already waiting, but not to
	 * pre-post the semaphore.
	 */
	if (thread_name != MACH_PORT_NULL) {
		thread = FUNC1(thread_name);
		if (thread == THREAD_NULL)
			return KERN_INVALID_ARGUMENT;
	} else
		thread = THREAD_NULL;

	kr = FUNC0(sema_name, &semaphore);
	if (kr == KERN_SUCCESS) {
		kr = FUNC3(semaphore,
				thread,
				SEMAPHORE_OPTION_NONE);
		FUNC2(semaphore);
	}
	if (thread != THREAD_NULL) {
		FUNC4(thread);
	}
	return kr;
}