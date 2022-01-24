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
typedef  size_t uint32_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,size_t) ; 
 size_t g_churn_count ; 
 int /*<<< orphan*/  g_churn_stop ; 
 int /*<<< orphan*/  g_churn_stopped_at ; 
 int /*<<< orphan*/ * g_churn_threads ; 
 int /*<<< orphan*/  memory_order_seq_cst ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void)
{
	if (FUNC0(&g_churn_stopped_at, memory_order_seq_cst) != 0)
		FUNC3("Warning: Some of the churn threads may have stopped early: %lld\n",
		       g_churn_stopped_at);

	FUNC1(&g_churn_stop, TRUE, memory_order_seq_cst);

	/* Rejoin churn threads */
	for (uint32_t i = 0; i < g_churn_count; i++) {
		errno_t err = FUNC4(g_churn_threads[i], NULL);
		if (err) FUNC2(EX_OSERR, err, "pthread_join %d", i);
	}
}