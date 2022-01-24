#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {scalar_t__ task; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int ESRCH ; 
 scalar_t__ FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMP_USYNCH_QOS_OVERRIDE ; 
 int /*<<< orphan*/  IMP_USYNCH_REMOVE_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* THREAD_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_1__* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(task_t      task,
                                thread_t    thread,
                                uint64_t    tid,
                                user_addr_t resource,
                                int         resource_type)
{
	boolean_t has_thread_reference = FALSE;

	if (thread == THREAD_NULL) {
		thread = FUNC4(task, tid);
		/* returns referenced thread */

		if (thread == THREAD_NULL) {
			FUNC1((FUNC0(IMP_USYNCH_QOS_OVERRIDE, IMP_USYNCH_REMOVE_OVERRIDE)) | DBG_FUNC_NONE,
			                      tid, 0, 0xdead, 0, 0);
			return ESRCH;
		}
		has_thread_reference = TRUE;
	} else {
		FUNC2(task == thread->task);
	}

	FUNC3(thread, resource, resource_type, FALSE);

	if (has_thread_reference)
		FUNC5(thread);

	return 0;
}