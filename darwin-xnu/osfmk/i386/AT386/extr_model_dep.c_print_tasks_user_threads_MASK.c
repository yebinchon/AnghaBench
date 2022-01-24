#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  rip; } ;
struct TYPE_12__ {TYPE_1__ isf; scalar_t__ rbp; } ;
struct TYPE_13__ {TYPE_2__ ss_64; } ;
typedef  TYPE_3__ x86_saved_state_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  TYPE_4__* thread_t ;
typedef  TYPE_5__* task_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_15__ {int thread_count; int /*<<< orphan*/  threads; } ;
struct TYPE_14__ {int /*<<< orphan*/  task_threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(task_t task)
{
	thread_t		thread = FUNC0();
	x86_saved_state_t *savestate;
	pmap_t			pmap = 0;
	uint64_t		rbp;
	const char		*cur_marker = 0;
	int             j;
	
	for (j = 0, thread = (thread_t) FUNC5(&task->threads); j < task->thread_count;
			++j, thread = (thread_t) FUNC6(&thread->task_threads)) {

		FUNC3("Thread %d: %p\n", j, thread);
		pmap = FUNC1(task);
		savestate = FUNC2(thread);
		rbp = savestate->ss_64.rbp;
		FUNC3("\t0x%016llx\n", savestate->ss_64.isf.rip);
		FUNC4(pmap, (vm_offset_t)rbp, cur_marker, TRUE);
		FUNC3("\n");
	}
}