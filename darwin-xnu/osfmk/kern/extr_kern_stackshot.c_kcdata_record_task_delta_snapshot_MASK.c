#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unaligned_u64 ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
typedef  TYPE_4__* task_t ;
struct task_delta_snapshot_v2 {int tds_latency_qos; void* tds_did_throttle; void* tds_was_throttled; int /*<<< orphan*/  tds_cow_faults; int /*<<< orphan*/  tds_pageins; int /*<<< orphan*/  tds_faults; int /*<<< orphan*/  tds_suspend_count; int /*<<< orphan*/  tds_max_resident_size; int /*<<< orphan*/  tds_task_size; int /*<<< orphan*/  tds_system_time_in_terminated_threads; int /*<<< orphan*/  tds_user_time_in_terminated_threads; int /*<<< orphan*/  tds_ss_flags; int /*<<< orphan*/  tds_unique_pid; } ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  kcdata_descriptor_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  asid ;
struct TYPE_13__ {int tep_latency_qos; } ;
struct TYPE_16__ {TYPE_3__* map; TYPE_1__ effective_policy; int /*<<< orphan*/  cow_faults; int /*<<< orphan*/  pageins; int /*<<< orphan*/  faults; int /*<<< orphan*/  suspend_count; int /*<<< orphan*/  total_system_time; int /*<<< orphan*/  total_user_time; } ;
struct TYPE_15__ {TYPE_2__* pmap; } ;
struct TYPE_14__ {void* asid; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int LATENCY_QOS_TIER_UNSPECIFIED ; 
 void* STACKSHOT_ASID ; 
 void* STACKSHOT_INSTRS_CYCLES ; 
 int /*<<< orphan*/  STACKSHOT_KCTYPE_ASID ; 
 int /*<<< orphan*/  STACKSHOT_KCTYPE_TASK_DELTA_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (void*,void**,int) ; 

__attribute__((used)) static kern_return_t
FUNC11(kcdata_descriptor_t kcd, task_t task, uint32_t trace_flags, boolean_t have_pmap, unaligned_u64 **task_snap_ss_flags)
{
#if !MONOTONIC
#pragma unused(trace_flags)
#endif /* !MONOTONIC */
	kern_return_t error                       = KERN_SUCCESS;
	struct task_delta_snapshot_v2 * cur_tsnap = NULL;
	mach_vm_address_t out_addr                = 0;
	(void) trace_flags;
#if __arm__ || __arm64__
	boolean_t collect_asid                    = ((trace_flags & STACKSHOT_ASID) != 0);
#endif
#if MONOTONIC
	boolean_t collect_instrs_cycles           = ((trace_flags & STACKSHOT_INSTRS_CYCLES) != 0);
#endif /* MONOTONIC */

	uint64_t task_uniqueid = FUNC3(task);
	FUNC0(task_snap_ss_flags != NULL);

	FUNC4(FUNC5(kcd, STACKSHOT_KCTYPE_TASK_DELTA_SNAPSHOT, sizeof(struct task_delta_snapshot_v2), &out_addr));

	cur_tsnap = (struct task_delta_snapshot_v2 *)out_addr;

	cur_tsnap->tds_unique_pid = task_uniqueid;
	cur_tsnap->tds_ss_flags = FUNC6(task);
	*task_snap_ss_flags = (unaligned_u64 *)&cur_tsnap->tds_ss_flags;

	cur_tsnap->tds_user_time_in_terminated_threads = task->total_user_time;
	cur_tsnap->tds_system_time_in_terminated_threads = task->total_system_time;

	cur_tsnap->tds_task_size = have_pmap ? FUNC1(task) : 0;

	cur_tsnap->tds_max_resident_size = FUNC2(task);
	cur_tsnap->tds_suspend_count = task->suspend_count;
	cur_tsnap->tds_faults            = task->faults;
	cur_tsnap->tds_pageins           = task->pageins;
	cur_tsnap->tds_cow_faults        = task->cow_faults;
	cur_tsnap->tds_was_throttled     = (uint32_t)FUNC9(task);
	cur_tsnap->tds_did_throttle      = (uint32_t)FUNC8(task);
	cur_tsnap->tds_latency_qos       = (task-> effective_policy.tep_latency_qos == LATENCY_QOS_TIER_UNSPECIFIED)
		? LATENCY_QOS_TIER_UNSPECIFIED
		: ((0xFF << 16) | task-> effective_policy.tep_latency_qos);

#if __arm__ || __arm64__
	if (collect_asid && have_pmap) {
		uint32_t asid = task->map->pmap->asid;
		kcd_exit_on_error(kcdata_get_memory_addr(kcd, STACKSHOT_KCTYPE_ASID, sizeof(uint32_t), &out_addr));
		stackshot_memcpy((void*)out_addr, &asid, sizeof(asid));
	}
#endif

#if MONOTONIC
	if (collect_instrs_cycles) {
		kcd_exit_on_error(kcdata_record_task_instrs_cycles(kcd, task));
	}
#endif /* MONOTONIC */

error_exit:
	return error;
}