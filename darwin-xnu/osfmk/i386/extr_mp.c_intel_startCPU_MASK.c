#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpu_running; } ;
struct TYPE_4__ {int target_cpu; int target_lapic; int /*<<< orphan*/  starter_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IdlePTD ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int* cpu_to_lapic ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_cpu_boot_lock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  start_cpu ; 
 TYPE_1__ start_info ; 
 int tsc_entry_barrier ; 
 int tsc_exit_barrier ; 

kern_return_t
FUNC15(
	int	slot_num)
{
	int		lapic = cpu_to_lapic[slot_num];
	boolean_t	istate;

	FUNC2(lapic != -1);

	FUNC1(slot_num);

	FUNC0("intel_startCPU(%d) lapic_id=%d\n", slot_num, lapic);
	FUNC0("IdlePTD(%p): 0x%x\n", &IdlePTD, (int) (uintptr_t)IdlePTD);

	/*
	 * Initialize (or re-initialize) the descriptor tables for this cpu.
	 * Propagate processor mode to slave.
	 */
	FUNC4(FUNC3(slot_num));

	/* Serialize use of the slave boot stack, etc. */
	FUNC10(&mp_cpu_boot_lock);

	istate = FUNC12(FALSE);
	if (slot_num == FUNC7()) {
		FUNC12(istate);
		FUNC11(&mp_cpu_boot_lock);
		return KERN_SUCCESS;
	}

	start_info.starter_cpu  = FUNC5();
	start_info.target_cpu   = slot_num;
	start_info.target_lapic = lapic;
	tsc_entry_barrier = 2;
	tsc_exit_barrier = 2;

	/*
	 * Perform the processor startup sequence with all running
	 * processors rendezvous'ed. This is required during periods when
	 * the cache-disable bit is set for MTRR/PAT initialization.
	 */
	FUNC13(start_cpu, (void *) &start_info);

	start_info.target_cpu = 0;

	FUNC12(istate);
	FUNC11(&mp_cpu_boot_lock);

	if (!FUNC3(slot_num)->cpu_running) {
		FUNC9("Failed to start CPU %02d\n", slot_num);
		FUNC14("Failed to start CPU %02d, rebooting...\n", slot_num);
		FUNC6(1000000);
		FUNC8();
		return KERN_SUCCESS;
	} else {
		FUNC9("Started cpu %d (lapic id %08x)\n", slot_num, lapic);
		return KERN_SUCCESS;
	}
}