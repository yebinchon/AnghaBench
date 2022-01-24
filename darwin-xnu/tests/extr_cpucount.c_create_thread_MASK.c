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

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pthread_t
FUNC7(void *(*start_routine)(void *), uint32_t priority)
{
	int rv;
	pthread_t new_thread;
	pthread_attr_t attr;

	struct sched_param param = { .sched_priority = (int)priority };

	rv = FUNC2(&attr);
	T_QUIET; FUNC0(rv, "pthread_attr_init");

	rv = FUNC3(&attr, PTHREAD_CREATE_DETACHED);
	T_QUIET; FUNC0(rv, "pthread_attr_setdetachstate");

	rv = FUNC4(&attr, &param);
	T_QUIET; FUNC0(rv, "pthread_attr_setschedparam");

	rv = FUNC5(&new_thread, &attr, start_routine, NULL);
	T_QUIET; FUNC0(rv, "pthread_create");

	if (priority == 97)
		FUNC6(new_thread);

	rv = FUNC1(&attr);
	T_QUIET; FUNC0(rv, "pthread_attr_destroy");

	return new_thread;
}