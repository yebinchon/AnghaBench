#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_6__ {scalar_t__ ftpc_rcount; scalar_t__ ftpc_acount; int /*<<< orphan*/  ftpc_mtx; struct TYPE_6__* ftpc_next; int /*<<< orphan*/  ftpc_pid; } ;
typedef  TYPE_1__ fasttrap_proc_t ;
struct TYPE_7__ {int /*<<< orphan*/  ftb_mtx; int /*<<< orphan*/  ftb_data; } ;
typedef  TYPE_2__ fasttrap_bucket_t ;
struct TYPE_8__ {TYPE_2__* fth_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fasttrap_lck_grp ; 
 TYPE_4__ fasttrap_procs ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(fasttrap_proc_t *proc)
{
	fasttrap_bucket_t *bucket;
	fasttrap_proc_t *fprc, **fprcp;
	pid_t pid = proc->ftpc_pid;

	FUNC4(&proc->ftpc_mtx);

	FUNC0(proc->ftpc_rcount != 0);
	FUNC0(proc->ftpc_acount <= proc->ftpc_rcount);

	if (--proc->ftpc_rcount != 0) {
		FUNC5(&proc->ftpc_mtx);
		return;
	}

	FUNC5(&proc->ftpc_mtx);

	/*
	 * There should definitely be no live providers associated with this
	 * process at this point.
	 */
	 FUNC0(proc->ftpc_acount == 0);

	bucket = &fasttrap_procs.fth_table[FUNC1(pid)];
	FUNC4(&bucket->ftb_mtx);

	fprcp = (fasttrap_proc_t **)&bucket->ftb_data;
	while ((fprc = *fprcp) != NULL) {
		if (fprc == proc)
			break;

		fprcp = &fprc->ftpc_next;
	}

	/*
	 * Something strange has happened if we can't find the proc.
	 */
	FUNC0(fprc != NULL);

	*fprcp = fprc->ftpc_next;

	FUNC5(&bucket->ftb_mtx);

	/*
	 * APPLE NOTE: explicit lock management. Not 100% certain we need this, the
	 * memory is freed even without the destroy. Maybe accounting cleanup?
	 */
	FUNC3(&fprc->ftpc_mtx, fasttrap_lck_grp);

	FUNC2(fprc, sizeof (fasttrap_proc_t));
}