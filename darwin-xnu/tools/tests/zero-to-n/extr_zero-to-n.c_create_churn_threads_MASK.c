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
typedef  int uint32_t ;
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  SCHED_RR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  churn_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int g_churn_count ; 
 scalar_t__ g_churn_pri ; 
 int /*<<< orphan*/ * g_churn_threads ; 
 int g_numcpus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8()
{
	if (g_churn_count == 0)
		g_churn_count = g_numcpus - 1;

	errno_t err;

	struct sched_param param = { .sched_priority = (int)g_churn_pri };
	pthread_attr_t attr;

	/* Array for churn threads */
	g_churn_threads = (pthread_t*) FUNC7(sizeof(pthread_t) * g_churn_count);
	FUNC0(g_churn_threads);

	if ((err = FUNC3(&attr)))
		FUNC1(EX_OSERR, err, "pthread_attr_init");

	if ((err = FUNC4(&attr, &param)))
		FUNC1(EX_OSERR, err, "pthread_attr_setschedparam");

	if ((err = FUNC5(&attr, SCHED_RR)))
		FUNC1(EX_OSERR, err, "pthread_attr_setschedpolicy");

	for (uint32_t i = 0 ; i < g_churn_count ; i++) {
		pthread_t new_thread;

		if ((err = FUNC6(&new_thread, &attr, churn_thread, NULL)))
			FUNC1(EX_OSERR, err, "pthread_create");
		g_churn_threads[i] = new_thread;
	}

	if ((err = FUNC2(&attr)))
		FUNC1(EX_OSERR, err, "pthread_attr_destroy");
}