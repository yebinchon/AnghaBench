#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tcache_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  tcache_ql; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(tcache_t *tcache, arena_t *arena)
{

	if (config_stats) {
		/* Link into list of extant tcaches. */
		FUNC0(&arena->lock);
		FUNC2(tcache, link);
		FUNC3(&arena->tcache_ql, tcache, link);
		FUNC1(&arena->lock);
	}
}