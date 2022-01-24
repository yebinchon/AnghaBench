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
struct TYPE_3__ {scalar_t__ tid; scalar_t__ pid; } ;
typedef  TYPE_1__ thread_id_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 scalar_t__ threaded ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC5(thread_id_t *thread, void *(fn)(void *), void *arg) {
	if (threaded) {
		kern_return_t	ret;
		ret = FUNC4(
				&thread->tid,
				NULL,
				fn,
				arg);
		if (ret != 0)
			FUNC0(1, "pthread_create()");
		if (verbose)
			FUNC3("created pthread %p\n", thread->tid);
	} else {
		thread->pid = FUNC2();
		if (thread->pid == 0) {
			if (verbose)
				FUNC3("calling %p(%p)\n", fn, arg);
			fn(arg);
			FUNC1(0);
		}
		if (verbose)
			FUNC3("forked pid %d\n", thread->pid);
	}
}