#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ p_pid; scalar_t__ p_dtrace_count; int /*<<< orphan*/  p_dtrace_sprlock; } ;
typedef  TYPE_2__ proc_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_20__ {scalar_t__ ftt_pid; TYPE_1__* ftt_proc; struct TYPE_20__* ftt_next; } ;
typedef  TYPE_3__ fasttrap_tracepoint_t ;
struct TYPE_21__ {int /*<<< orphan*/  ftb_mtx; TYPE_3__* ftb_data; } ;
typedef  TYPE_4__ fasttrap_bucket_t ;
struct TYPE_18__ {scalar_t__ ftpc_acount; } ;
struct TYPE_17__ {unsigned int fth_nent; TYPE_4__* fth_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_11__ fasttrap_tpoints ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC12(proc_t *p, proc_t *cp)
{
	pid_t ppid = p->p_pid;
	unsigned int i;

	FUNC0(FUNC2() == p);
	FUNC1(&p->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
	FUNC0(p->p_dtrace_count > 0);
	FUNC0(cp->p_dtrace_count == 0);

	/*
	 * This would be simpler and faster if we maintained per-process
	 * hash tables of enabled tracepoints. It could, however, potentially
	 * slow down execution of a tracepoint since we'd need to go
	 * through two levels of indirection. In the future, we should
	 * consider either maintaining per-process ancillary lists of
	 * enabled tracepoints or hanging a pointer to a per-process hash
	 * table of enabled tracepoints off the proc structure.
	 */

	/*
	 * We don't have to worry about the child process disappearing
	 * because we're in fork().
	 */
	if (cp != FUNC10(cp->p_pid)) {
		FUNC7("fasttrap_fork: sprlock(%d) returned a different proc\n", cp->p_pid);
		return;
	}
	FUNC9(cp);

	/*
	 * Iterate over every tracepoint looking for ones that belong to the
	 * parent process, and remove each from the child process.
	 */
	for (i = 0; i < fasttrap_tpoints.fth_nent; i++) {
		fasttrap_tracepoint_t *tp;
		fasttrap_bucket_t *bucket = &fasttrap_tpoints.fth_table[i];

		FUNC5(&bucket->ftb_mtx);
		for (tp = bucket->ftb_data; tp != NULL; tp = tp->ftt_next) {
			if (tp->ftt_pid == ppid &&
			    tp->ftt_proc->ftpc_acount != 0) {
				FUNC4(cp, tp);

				/*
				 * The count of active providers can only be
				 * decremented (i.e. to zero) during exec,
				 * exit, and removal of a meta provider so it
				 * should be impossible to drop the count
				 * mid-fork.
				 */
				 FUNC0(tp->ftt_proc->ftpc_acount != 0);
			}
		}
		FUNC6(&bucket->ftb_mtx);
	}

	/*
	 * Free any ptss pages/entries in the child.
	 */
	FUNC3(p, cp);

	FUNC8(cp);
	FUNC11(cp);
}