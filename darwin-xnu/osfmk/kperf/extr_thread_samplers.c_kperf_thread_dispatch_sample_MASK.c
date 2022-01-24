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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ task_t ;
struct kperf_thread_dispatch {scalar_t__ kpthdi_dq_serialno; } ;
struct kperf_context {TYPE_1__* cur_thread; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int PERF_TI_DISPSAMPLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ kernel_task ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

void
FUNC8(struct kperf_thread_dispatch *thdi,
                             struct kperf_context *context)
{
	FUNC2(thdi != NULL);
	FUNC2(context != NULL);

	thread_t thread = context->cur_thread;

	FUNC0(PERF_TI_DISPSAMPLE | DBG_FUNC_START, (uintptr_t)FUNC7(thread));

	task_t task = thread->task;
	boolean_t task_64 = FUNC5(task);
	size_t user_addr_size = task_64 ? 8 : 4;

	FUNC2(thread->task != kernel_task);
	uint64_t user_dq_key_addr = FUNC6(thread);
	if (user_dq_key_addr == 0) {
		goto error;
	}

	uint64_t user_dq_addr;
	if ((FUNC3((user_addr_t)user_dq_key_addr,
	            (char *)&user_dq_addr,
	            user_addr_size) != 0) ||
		(user_dq_addr == 0))
	{
		goto error;
	}

	uint64_t user_dq_serialno_addr =
		user_dq_addr + FUNC4(task);

	if (FUNC3((user_addr_t)user_dq_serialno_addr,
	           (char *)&(thdi->kpthdi_dq_serialno),
	           user_addr_size) == 0)
	{
		goto out;
	}

error:
	thdi->kpthdi_dq_serialno = 0;

out:
	FUNC1(PERF_TI_DISPSAMPLE | DBG_FUNC_END);
}