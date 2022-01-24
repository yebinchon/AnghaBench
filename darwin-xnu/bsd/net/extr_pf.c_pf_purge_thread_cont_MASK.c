#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_4__ {int* timeout; } ;
struct TYPE_3__ {int states; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 size_t PFTM_INTERVAL ; 
 int /*<<< orphan*/  PWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__ pf_default_rule ; 
 int /*<<< orphan*/  pf_lock ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  pf_perim_lock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * pf_purge_thread ; 
 int /*<<< orphan*/  pf_purge_thread_fn ; 
 TYPE_1__ pf_status ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree_src_tracking ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int (*) (int)) ; 

__attribute__((used)) static int
FUNC15(int err)
{
#pragma unused(err)
	static u_int32_t nloops = 0;
	int t = 1;	/* 1 second */

	/*
	 * Update coarse-grained networking timestamp (in sec.); the idea
	 * is to piggy-back on the periodic timeout callout to update
	 * the counter returnable via net_uptime().
	 */
	FUNC7();

	FUNC6(pf_perim_lock);
	FUNC3(pf_lock);

	/* purge everything if not running */
	if (!pf_status.running) {
		FUNC11(pf_status.states);
		FUNC9();
		FUNC10();

		/* terminate thread (we don't currently do this) */
		if (pf_purge_thread == NULL) {
			FUNC4(pf_lock);
			FUNC5(pf_perim_lock);

			FUNC12(FUNC2());
			FUNC13(FUNC2());
			/* NOTREACHED */
			return (0);
		} else {
			/* if there's nothing left, sleep w/o timeout */
			if (pf_status.states == 0 &&
			    FUNC8() &&
			    FUNC0(&tree_src_tracking)) {
				nloops = 0;
				t = 0;
			}
			goto done;
		}
	}

	/* process a fraction of the state table every second */
	FUNC11(1 + (pf_status.states
	    / pf_default_rule.timeout[PFTM_INTERVAL]));

	/* purge other expired types every PFTM_INTERVAL seconds */
	if (++nloops >= pf_default_rule.timeout[PFTM_INTERVAL]) {
		FUNC9();
		FUNC10();
		nloops = 0;
	}
done:
	FUNC4(pf_lock);
	FUNC5(pf_perim_lock);

	(void) FUNC14(pf_purge_thread_fn, PWAIT, "pf_purge_cont",
	    t * hz, pf_purge_thread_cont);
	/* NOTREACHED */
	FUNC1(0);

	return (0);
}