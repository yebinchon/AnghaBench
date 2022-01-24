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
typedef  int /*<<< orphan*/  dtrace_dynvar_t ;
struct TYPE_4__ {int /*<<< orphan*/  dtds_state; TYPE_2__* dtds_percpu; } ;
typedef  TYPE_1__ dtrace_dstate_t ;
struct TYPE_5__ {int /*<<< orphan*/ * dtdsc_rinsing; int /*<<< orphan*/ * dtdsc_clean; int /*<<< orphan*/ * dtdsc_dirty; } ;
typedef  TYPE_2__ dtrace_dstate_percpu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DTRACE_DSTATE_CLEAN ; 
 scalar_t__ NCPU ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(dtrace_dstate_t *dstate)
{
	dtrace_dynvar_t *dirty;
	dtrace_dstate_percpu_t *dcpu;
	int i, work = 0;

	for (i = 0; i < (int)NCPU; i++) {
		dcpu = &dstate->dtds_percpu[i];

		FUNC0(dcpu->dtdsc_rinsing == NULL);

		/*
		 * If the dirty list is NULL, there is no dirty work to do.
		 */
		if (dcpu->dtdsc_dirty == NULL)
			continue;

		/*
		 * If the clean list is non-NULL, then we're not going to do
		 * any work for this CPU -- it means that there has not been
		 * a dtrace_dynvar() allocation on this CPU (or from this CPU)
		 * since the last time we cleaned house.
		 */
		if (dcpu->dtdsc_clean != NULL)
			continue;

		work = 1;

		/*
		 * Atomically move the dirty list aside.
		 */
		do {
			dirty = dcpu->dtdsc_dirty;

			/*
			 * Before we zap the dirty list, set the rinsing list.
			 * (This allows for a potential assertion in
			 * dtrace_dynvar():  if a free dynamic variable appears
			 * on a hash chain, either the dirty list or the
			 * rinsing list for some CPU must be non-NULL.)
			 */
			dcpu->dtdsc_rinsing = dirty;
			FUNC2();
		} while (FUNC1(&dcpu->dtdsc_dirty,
		    dirty, NULL) != dirty);
	}

	if (!work) {
		/*
		 * We have no work to do; we can simply return.
		 */
		return;
	}

	FUNC3();

	for (i = 0; i < (int)NCPU; i++) {
		dcpu = &dstate->dtds_percpu[i];

		if (dcpu->dtdsc_rinsing == NULL)
			continue;

		/*
		 * We are now guaranteed that no hash chain contains a pointer
		 * into this dirty list; we can make it clean.
		 */
		FUNC0(dcpu->dtdsc_clean == NULL);
		dcpu->dtdsc_clean = dcpu->dtdsc_rinsing;
		dcpu->dtdsc_rinsing = NULL;
	}

	/*
	 * Before we actually set the state to be DTRACE_DSTATE_CLEAN, make
	 * sure that all CPUs have seen all of the dtdsc_clean pointers.
	 * This prevents a race whereby a CPU incorrectly decides that
	 * the state should be something other than DTRACE_DSTATE_CLEAN
	 * after dtrace_dynvar_clean() has completed.
	 */
	FUNC3();

	dstate->dtds_state = DTRACE_DSTATE_CLEAN;
}