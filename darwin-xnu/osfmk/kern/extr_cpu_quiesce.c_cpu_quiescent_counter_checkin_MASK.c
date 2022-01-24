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
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* processor_t ;
typedef  int checkin_mask_t ;
struct TYPE_3__ {int cpu_id; scalar_t__ cpu_quiesce_state; scalar_t__ cpu_quiesce_last_checkin; } ;

/* Variables and functions */
 scalar_t__ CPU_QUIESCE_COUNTER_JOINED ; 
 scalar_t__ CPU_QUIESCE_COUNTER_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  acq_rel ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ cpu_checkin_min_interval ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  cpu_quiescing_checkin_state ; 
 TYPE_1__* FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 

void
FUNC10(uint64_t ctime)
{
	processor_t processor = FUNC7();
	int cpuid = processor->cpu_id;

	FUNC1(processor->cpu_quiesce_state != CPU_QUIESCE_COUNTER_NONE);

	/* If we're not joined yet, we don't need to check in */
	if (FUNC0(processor->cpu_quiesce_state != CPU_QUIESCE_COUNTER_JOINED))
		return;

	/* If we've checked in recently, we don't need to check in yet. */
	if (FUNC0((ctime - processor->cpu_quiesce_last_checkin) <= cpu_checkin_min_interval))
		return;

	processor->cpu_quiesce_last_checkin = ctime;

	checkin_mask_t state = FUNC8(&cpu_quiescing_checkin_state, relaxed);

	FUNC1((state & FUNC4(cpuid)));

	if (FUNC0((state & FUNC3(cpuid)))) {
		/*
		 * Processor has already checked in for this round, no need to
		 * acquire the cacheline exclusive.
		 */
		return;
	}

	checkin_mask_t orig_state = FUNC9(&cpu_quiescing_checkin_state,
	                                              FUNC3(cpuid), acq_rel);

	checkin_mask_t new_state = orig_state | FUNC3(cpuid);

	if (FUNC6(new_state)) {
		FUNC2(!FUNC6(orig_state),
		        "old: 0x%lx, new: 0x%lx", orig_state, new_state);
		FUNC5(ctime);
	}
}