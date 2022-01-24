#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_6__ {int /*<<< orphan*/  did_throttle; int /*<<< orphan*/  was_throttled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* PROC_NULL ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void 
FUNC4(pid_t throttling_pid, int count)
{
	proc_t throttling_proc;
	proc_t throttled_proc = FUNC1();

	/* The throttled_proc is always the current proc; so we are not concerned with refs */
	FUNC0(count, &(throttled_proc->was_throttled));
	
	/* The throttling pid might have exited by now */
	throttling_proc = FUNC2(throttling_pid);
	if (throttling_proc != PROC_NULL) {
		FUNC0(count, &(throttling_proc->did_throttle));
		FUNC3(throttling_proc);
	}
}