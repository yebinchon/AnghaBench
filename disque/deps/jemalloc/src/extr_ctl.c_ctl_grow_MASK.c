#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl_arena_stats_t ;
struct TYPE_2__ {int narenas; int /*<<< orphan*/ * arenas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ctl_stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC6(void)
{
	ctl_arena_stats_t *astats;

	/* Initialize new arena. */
	if (FUNC2(ctl_stats.narenas) == NULL)
		return (true);

	/* Allocate extended arena stats. */
	astats = (ctl_arena_stats_t *)FUNC1((ctl_stats.narenas + 2) *
	    sizeof(ctl_arena_stats_t));
	if (astats == NULL)
		return (true);

	/* Initialize the new astats element. */
	FUNC4(astats, ctl_stats.arenas, (ctl_stats.narenas + 1) *
	    sizeof(ctl_arena_stats_t));
	FUNC5(&astats[ctl_stats.narenas + 1], 0, sizeof(ctl_arena_stats_t));
	if (FUNC3(&astats[ctl_stats.narenas + 1])) {
		FUNC0(astats);
		return (true);
	}
	/* Swap merged stats to their new location. */
	{
		ctl_arena_stats_t tstats;
		FUNC4(&tstats, &astats[ctl_stats.narenas],
		    sizeof(ctl_arena_stats_t));
		FUNC4(&astats[ctl_stats.narenas],
		    &astats[ctl_stats.narenas + 1], sizeof(ctl_arena_stats_t));
		FUNC4(&astats[ctl_stats.narenas + 1], &tstats,
		    sizeof(ctl_arena_stats_t));
	}
	FUNC0(ctl_stats.arenas);
	ctl_stats.arenas = astats;
	ctl_stats.narenas++;

	return (false);
}