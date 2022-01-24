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
struct session {int dummy; } ;
struct pgrp {scalar_t__ pg_jobc; struct session* pg_session; } ;
struct fixjob_iterargs {int entering; struct session* mysession; struct pgrp* pg; } ;
typedef  scalar_t__ proc_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 struct pgrp* PGRP_NULL ; 
 scalar_t__ PROC_NULL ; 
 struct session* SESSION_NULL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  fixjob_callback ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct fixjob_iterargs*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct pgrp* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 struct session* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct session*) ; 

void
FUNC12(proc_t p, struct pgrp *pgrp, int entering)
{
	struct pgrp *hispgrp = PGRP_NULL;
	struct session *hissess = SESSION_NULL;
	struct session *mysession = pgrp->pg_session;
	proc_t parent;
	struct fixjob_iterargs fjarg;
	boolean_t proc_parent_self;

	/*
	 * Check if p's parent is current proc, if yes then no need to take 
	 * a ref; calling proc_parent with current proc as parent may 
	 * deadlock if current proc is exiting.
	 */
	proc_parent_self = FUNC7(p);
	if (proc_parent_self)
		parent = FUNC0();
	else 
		parent = FUNC6(p);

	if (parent != PROC_NULL) {
		hispgrp = FUNC8(parent);	
		hissess = FUNC10(parent);
		if (!proc_parent_self)
			FUNC9(parent);
	}


	/*
	 * Check p's parent to see whether p qualifies its own process
	 * group; if so, adjust count for p's process group.
	 */
	if ((hispgrp != pgrp) &&
	    (hissess == mysession)) {
		FUNC3(pgrp);
		if (entering) {
			pgrp->pg_jobc++;
			FUNC4(pgrp);
		 }else if (--pgrp->pg_jobc == 0) {
			FUNC4(pgrp);
			FUNC1(pgrp);
		} else
			FUNC4(pgrp);
	}

	if (hissess != SESSION_NULL)
		FUNC11(hissess);
	if (hispgrp != PGRP_NULL)
		FUNC2(hispgrp);

	/*
	 * Check this process' children to see whether they qualify
	 * their process groups; if so, adjust counts for children's
	 * process groups.
	 */
	fjarg.pg = pgrp;
	fjarg.mysession = mysession;
	fjarg.entering = entering;
	FUNC5(p, fixjob_callback, &fjarg);
}