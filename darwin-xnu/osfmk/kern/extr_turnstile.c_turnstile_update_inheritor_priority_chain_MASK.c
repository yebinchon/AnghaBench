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
typedef  int turnstile_update_flags_t ;
typedef  int turnstile_stats_update_flags_t ;
typedef  struct turnstile* turnstile_inheritor_t ;
typedef  scalar_t__ thread_t ;
struct turnstile {int ts_inheritor_flags; int /*<<< orphan*/  ts_waitq; int /*<<< orphan*/ * ts_inheritor; } ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 scalar_t__ THREAD_NULL ; 
 int TSU_BOOST_ARG ; 
 int TSU_FLAGS_NONE ; 
 int TSU_NO_INHERITOR ; 
 int TSU_NO_PRI_CHANGE_NEEDED ; 
 int TSU_PRI_PROPAGATION ; 
 int TSU_TURNSTILE_ARG ; 
 int TURNSTILE_INHERITOR_THREAD ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int TURNSTILE_INHERITOR_WORKQ ; 
 struct turnstile* TURNSTILE_NULL ; 
 int TURNSTILE_UPDATE_BOOST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,struct turnstile**,int,int,int) ; 
 int FUNC7 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC8 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,struct turnstile*) ; 
 int /*<<< orphan*/  FUNC10 (struct turnstile**,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct turnstile**,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(
	turnstile_inheritor_t inheritor,
	turnstile_update_flags_t turnstile_flags)
{
	struct turnstile *turnstile = TURNSTILE_NULL;
	thread_t thread = THREAD_NULL;
	int total_hop = 0, thread_hop = 0;
	spl_t s;
	turnstile_stats_update_flags_t tsu_flags = ((turnstile_flags & TURNSTILE_UPDATE_BOOST) ?
		TSU_BOOST_ARG : TSU_FLAGS_NONE) | TSU_PRI_PROPAGATION;

	if (inheritor == NULL) {
		return;
	}

	s = FUNC2();

	if (turnstile_flags & TURNSTILE_INHERITOR_THREAD) {
		thread = inheritor;
		FUNC4(thread);
		//TODO: Need to call sched promotion for kernel mutex.
		FUNC5(thread);
	} else if (turnstile_flags & TURNSTILE_INHERITOR_TURNSTILE) {
		turnstile = inheritor;
		FUNC13(&turnstile->ts_waitq);
		FUNC8(turnstile);
		tsu_flags |= FUNC7(turnstile);
	} else {
		/*
		 * we should never call turnstile_update_inheritor_priority_chain()
		 * for a workqueue, they have no "chain" after them.
		 */
		FUNC0((turnstile_flags & TURNSTILE_INHERITOR_WORKQ) == 0);
	}

	while (turnstile != TURNSTILE_NULL || thread != THREAD_NULL) {
		if (turnstile != TURNSTILE_NULL) {
			if (turnstile->ts_inheritor == NULL) {
				FUNC9(total_hop + 1, TSU_NO_INHERITOR |
					TSU_TURNSTILE_ARG | tsu_flags,
					turnstile);
				FUNC14(&turnstile->ts_waitq);
				turnstile = TURNSTILE_NULL;
				break;
			}
			if (turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_THREAD) {
				FUNC10(&turnstile, &thread,
					total_hop, tsu_flags);

			} else if (turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_TURNSTILE) {
				FUNC11(&turnstile,
					total_hop, tsu_flags);

			} else if (turnstile->ts_inheritor_flags & TURNSTILE_INHERITOR_WORKQ) {
				FUNC12(turnstile, s);
				FUNC9(total_hop + 1, TSU_NO_PRI_CHANGE_NEEDED | tsu_flags,
					NULL);
				return;

			} else {
				FUNC1("Inheritor flags not passed in turnstile_update_inheritor");
			}
		} else if (thread != THREAD_NULL) {
			FUNC6(&thread, &turnstile,
					thread_hop, total_hop, tsu_flags);
			thread_hop++;
		}
		total_hop++;
	}

	FUNC3(s);
	return;
}