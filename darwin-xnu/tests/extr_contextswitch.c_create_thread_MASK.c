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
typedef  size_t uint32_t ;
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCHED_RR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 TYPE_1__* threads ; 

__attribute__((used)) static pthread_t
FUNC6(uint32_t thread_id, uint32_t priority, bool fixpri, 
        void *(*start_routine)(void *))
{
    int rv;
    pthread_t new_thread;
    struct sched_param param = { .sched_priority = (int)priority };
    pthread_attr_t attr;

    FUNC0(FUNC2(&attr), "pthread_attr_init");

    FUNC0(FUNC3(&attr, &param),
            "pthread_attr_setschedparam");

    if (fixpri) {
        FUNC0(FUNC4(&attr, SCHED_RR),
                "pthread_attr_setschedpolicy");
    }

    FUNC0(FUNC5(&new_thread, &attr, start_routine,
            (void*)(uintptr_t)thread_id), "pthread_create");

    FUNC0(FUNC1(&attr), "pthread_attr_destroy");

    threads[thread_id].thread = new_thread;

    return new_thread;
}