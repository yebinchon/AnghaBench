#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  p_pid; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_12__ {int ftt_retired; int /*<<< orphan*/  ftt_pc; } ;
typedef  TYPE_2__ fasttrap_tracepoint_t ;
struct TYPE_13__ {int /*<<< orphan*/  fttps_pc; int /*<<< orphan*/  fttps_pid; } ;
typedef  TYPE_3__ fasttrap_tracepoint_spec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FASTTRAP_CLEANUP_TRACEPOINT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int fasttrap_cur_retired ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fasttrap_retired_mtx ; 
 int fasttrap_retired_size ; 
 TYPE_3__* fasttrap_retired_spec ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int) ; 

void
FUNC6(proc_t *p, fasttrap_tracepoint_t *tp)
{
	if (tp->ftt_retired)
		return;
	FUNC3(&fasttrap_retired_mtx);
	fasttrap_tracepoint_spec_t *s = &fasttrap_retired_spec[fasttrap_cur_retired++];
	s->fttps_pid = p->p_pid;
	s->fttps_pc = tp->ftt_pc;

	if (fasttrap_cur_retired == fasttrap_retired_size) {
		fasttrap_tracepoint_spec_t *new_retired = FUNC2(
					fasttrap_retired_size * 2 *
					sizeof(*fasttrap_retired_spec),
					KM_SLEEP);
		FUNC5(new_retired, fasttrap_retired_spec, sizeof(*fasttrap_retired_spec) * fasttrap_retired_size);
		FUNC1(fasttrap_retired_spec, sizeof(*fasttrap_retired_spec) * fasttrap_retired_size);
		fasttrap_retired_size *= 2;
		fasttrap_retired_spec = new_retired;
	}

	FUNC4(&fasttrap_retired_mtx);

	tp->ftt_retired = 1;

	FUNC0(FASTTRAP_CLEANUP_TRACEPOINT);
}