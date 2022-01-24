#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spl_t ;
typedef  TYPE_1__* processor_t ;
typedef  TYPE_2__* processor_set_t ;
struct TYPE_10__ {int /*<<< orphan*/  online_processor_count; } ;
struct TYPE_9__ {int /*<<< orphan*/  cpu_id; TYPE_2__* processor_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROCESSOR_RUNNING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  processor_avail_count ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(
	processor_t			processor)
{
	processor_set_t		pset;
	spl_t				s;

	s = FUNC8();
	FUNC3(processor);
	pset = processor->processor_set;
	FUNC5(pset);
	++pset->online_processor_count;
	FUNC7(pset, processor, PROCESSOR_RUNNING);
	(void)FUNC2(&processor_avail_count, 1);
	FUNC0();
	FUNC6(pset);
	FUNC4();
	FUNC9(s);

#if CONFIG_DTRACE
	if (dtrace_cpu_state_changed_hook)
		(*dtrace_cpu_state_changed_hook)(processor->cpu_id, TRUE);
#endif
}