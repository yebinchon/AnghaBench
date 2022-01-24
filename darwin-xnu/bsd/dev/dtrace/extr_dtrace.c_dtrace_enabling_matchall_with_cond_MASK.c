#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_match_cond_t ;
struct TYPE_4__ {struct TYPE_4__* dten_next; } ;
typedef  TYPE_1__ dtrace_enabling_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 TYPE_1__* dtrace_retained ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(dtrace_match_cond_t *cond)
{
	dtrace_enabling_t *enab;

	FUNC1(&cpu_lock);
	FUNC1(&dtrace_lock);

	/*
	 * Iterate over all retained enablings to see if any probes match
	 * against them.  We only perform this operation on enablings for which
	 * we have sufficient permissions by virtue of being in the global zone
	 * or in the same zone as the DTrace client.  Because we can be called
	 * after dtrace_detach() has been called, we cannot assert that there
	 * are retained enablings.  We can safely load from dtrace_retained,
	 * however:  the taskq_destroy() at the end of dtrace_detach() will
	 * block pending our completion.
	 */

	/*
	 * Darwin doesn't do zones.
	 * Behave as if always in "global" zone."
	 */
	for (enab = dtrace_retained; enab != NULL; enab = enab->dten_next) {
		(void) FUNC0(enab, NULL, cond);
	}

	FUNC2(&dtrace_lock);
	FUNC2(&cpu_lock);

}