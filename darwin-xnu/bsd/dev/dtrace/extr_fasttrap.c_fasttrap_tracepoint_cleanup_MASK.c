#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_8__ {scalar_t__ ftt_pid; scalar_t__ ftt_pc; scalar_t__ ftt_retired; TYPE_1__* ftt_proc; struct TYPE_8__* ftt_next; } ;
typedef  TYPE_2__ fasttrap_tracepoint_t ;
struct TYPE_9__ {int /*<<< orphan*/  ftb_mtx; TYPE_2__* ftb_data; } ;
typedef  TYPE_3__ fasttrap_bucket_t ;
struct TYPE_11__ {scalar_t__ fttps_pc; scalar_t__ fttps_pid; } ;
struct TYPE_10__ {TYPE_3__* fth_table; } ;
struct TYPE_7__ {scalar_t__ ftpc_acount; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * PROC_NULL ; 
 size_t fasttrap_cur_retired ; 
 int /*<<< orphan*/  fasttrap_retired_mtx ; 
 TYPE_6__* fasttrap_retired_spec ; 
 TYPE_5__ fasttrap_tpoints ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void)
{
	size_t i;
	pid_t pid = 0;
	user_addr_t pc;
	proc_t *p = PROC_NULL;
	fasttrap_tracepoint_t *tp = NULL;
	FUNC2(&fasttrap_retired_mtx);
	fasttrap_bucket_t *bucket;
	for (i = 0; i < fasttrap_cur_retired; i++) {
		pc = fasttrap_retired_spec[i].fttps_pc;
		if (fasttrap_retired_spec[i].fttps_pid != pid) {
			pid = fasttrap_retired_spec[i].fttps_pid;
			if (p != PROC_NULL) {
				FUNC5(p);
			}
			if ((p = FUNC4(pid)) == PROC_NULL) {
				pid = 0;
				continue;
			}
		}
		bucket = &fasttrap_tpoints.fth_table[FUNC0(pid, pc)];
		FUNC2(&bucket->ftb_mtx);
		for (tp = bucket->ftb_data; tp != NULL; tp = tp->ftt_next) {
			if (pid == tp->ftt_pid && pc == tp->ftt_pc &&
			tp->ftt_proc->ftpc_acount != 0)
				break;
		}
		/*
		 * Check that the tracepoint is not gone or has not been
		 * re-activated for another probe
		 */
		if (tp == NULL || tp->ftt_retired == 0) {
			FUNC3(&bucket->ftb_mtx);
			continue;
		}
		FUNC1(p, tp);
		FUNC3(&bucket->ftb_mtx);
	}
	if (p != PROC_NULL) {
		FUNC5(p);
	}

	fasttrap_cur_retired = 0;

	FUNC3(&fasttrap_retired_mtx);
}