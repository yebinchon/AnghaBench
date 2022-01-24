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
struct lck_mtx_test_stats_elem {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int TEST_MTX_MAX_STATS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* lck_mtx_test_stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  test_mtx_stats_attr ; 
 int /*<<< orphan*/  test_mtx_stats_grp ; 
 int /*<<< orphan*/  test_mtx_stats_grp_attr ; 

__attribute__((used)) static void
FUNC6(void)
{
	int i;

	FUNC2(&test_mtx_stats_grp_attr);
	FUNC3(&test_mtx_stats_grp, "testlck_stats_mtx", &test_mtx_stats_grp_attr);
	FUNC1(&test_mtx_stats_attr);

	FUNC0(&enabled, TRUE);
	for(i = 0; i < TEST_MTX_MAX_STATS; i++){
		FUNC5(&lck_mtx_test_stats[i], 0 , sizeof(struct lck_mtx_test_stats_elem));
		lck_mtx_test_stats[i].min = ~0;
		FUNC4(&lck_mtx_test_stats[i].lock, &test_mtx_stats_grp, &test_mtx_stats_attr);
	}
}