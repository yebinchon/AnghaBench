#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int initialized; struct TYPE_6__* hstats; struct TYPE_6__* lstats; } ;
typedef  TYPE_1__ ctl_arena_stats_t ;
struct TYPE_7__ {int narenas; TYPE_1__* arenas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ ctl_epoch ; 
 int ctl_initialized ; 
 int /*<<< orphan*/  ctl_mtx ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ ctl_stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 

__attribute__((used)) static bool
FUNC8(void)
{
	bool ret;

	FUNC4(&ctl_mtx);
	if (!ctl_initialized) {
		/*
		 * Allocate space for one extra arena stats element, which
		 * contains summed stats across all arenas.
		 */
		ctl_stats.narenas = FUNC7();
		ctl_stats.arenas = (ctl_arena_stats_t *)FUNC1(
		    (ctl_stats.narenas + 1) * sizeof(ctl_arena_stats_t));
		if (ctl_stats.arenas == NULL) {
			ret = true;
			goto label_return;
		}
		FUNC6(ctl_stats.arenas, 0, (ctl_stats.narenas + 1) *
		    sizeof(ctl_arena_stats_t));

		/*
		 * Initialize all stats structures, regardless of whether they
		 * ever get used.  Lazy initialization would allow errors to
		 * cause inconsistent state to be viewable by the application.
		 */
		if (config_stats) {
			unsigned i;
			for (i = 0; i <= ctl_stats.narenas; i++) {
				if (FUNC2(&ctl_stats.arenas[i])) {
					unsigned j;
					for (j = 0; j < i; j++) {
						FUNC0(
						    ctl_stats.arenas[j].lstats);
						FUNC0(
						    ctl_stats.arenas[j].hstats);
					}
					FUNC0(ctl_stats.arenas);
					ctl_stats.arenas = NULL;
					ret = true;
					goto label_return;
				}
			}
		}
		ctl_stats.arenas[ctl_stats.narenas].initialized = true;

		ctl_epoch = 0;
		FUNC3();
		ctl_initialized = true;
	}

	ret = false;
label_return:
	FUNC5(&ctl_mtx);
	return (ret);
}