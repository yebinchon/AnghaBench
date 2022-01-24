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
struct pgrp {scalar_t__ pg_jobc; } ;
struct fixjob_iterargs {int entering; struct session* mysession; struct pgrp* pg; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 struct pgrp* PGRP_NULL ; 
 int PROC_RETURNED ; 
 struct session* SESSION_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 struct pgrp* FUNC4 (int /*<<< orphan*/ ) ; 
 struct session* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct session*) ; 

int
FUNC7(proc_t p, void * arg)
{
	struct fixjob_iterargs *fp;
	struct pgrp * pg, *hispg;
	struct session * mysession, *hissess;
	int entering;

	fp = (struct fixjob_iterargs *)arg;
	pg = fp->pg;
	mysession = fp->mysession;
	entering = fp->entering;

	hispg = FUNC4(p);
	hissess = FUNC5(p);

	if ((hispg  != pg) &&
	    (hissess == mysession)) {
		FUNC2(hispg);
		if (entering) {
			hispg->pg_jobc++;
			FUNC3(hispg);
		} else if (--hispg->pg_jobc == 0) {
			FUNC3(hispg);
			FUNC0(hispg);
		} else
			FUNC3(hispg);
	}
	if (hissess != SESSION_NULL)
		FUNC6(hissess);
	if (hispg != PGRP_NULL)
		FUNC1(hispg);

	return(PROC_RETURNED);
}