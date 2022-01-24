#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc_workqueueinfo {int pwq_state; } ;
typedef  int /*<<< orphan*/ * proc_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT ; 
 int WQ_EXCEEDED_TOTAL_THREAD_LIMIT ; 
 int WQ_FLAGS_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct proc_workqueueinfo*) ; 

boolean_t
FUNC2(void *v, boolean_t *exceeded_total,
		boolean_t *exceeded_constrained)
{
	proc_t p = v;
	struct proc_workqueueinfo pwqinfo;
	int err;

	FUNC0(p != NULL);
	FUNC0(exceeded_total != NULL);
	FUNC0(exceeded_constrained != NULL);

	err = FUNC1(p, &pwqinfo);
	if (err) {
		return FALSE;
	}
	if (!(pwqinfo.pwq_state & WQ_FLAGS_AVAILABLE)) {
		return FALSE;
	}

	*exceeded_total = (pwqinfo.pwq_state & WQ_EXCEEDED_TOTAL_THREAD_LIMIT);
	*exceeded_constrained = (pwqinfo.pwq_state & WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT);

	return TRUE;
}