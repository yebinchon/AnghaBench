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
typedef  int mstime_t ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ retry; int flags; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_7__ {scalar_t__ maxmemory_policy; int maxmemory; int /*<<< orphan*/  jobs; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int DISQUE_NOT_FREED_MAX_LEN ; 
 int JOB_FLAG_DELIVERED ; 
 scalar_t__ JOB_STATE_ACKED ; 
 scalar_t__ MAXMEMORY_NO_EVICTION ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 size_t FUNC10 () ; 

int FUNC11(void) {
    size_t mem_used, mem_tofree, mem_freed, mem_target;
    mstime_t latency;

    /* We start to reclaim memory only at memory warning 2 or greater, that is
     * when 95% of maxmemory is reached. */
    if (FUNC4() < 2) return C_OK;

    if (server.maxmemory_policy == MAXMEMORY_NO_EVICTION)
        return C_ERR; /* We need to free memory, but policy forbids. */

    /* Compute how much memory we need to free. */
    mem_used = FUNC10();
    mem_target = server.maxmemory / 100 * 95;

    /* The following check is not actaully needed since we already checked
     * that getMemoryWarningLevel() returned 2 or greater, but it is safer
     * to have given that we are working with unsigned integers to compute
     * mem_tofree. */
    if (mem_used <= mem_target) return C_OK;

    /* The eviction loop: for up to 2 milliseconds we try to reclaim memory
     * as long we are able to make progresses, otherwise we just stop ASAP. */
    mem_tofree = mem_used - mem_target;
    mem_freed = 0;
    FUNC7(latency);

    int not_freed = 0; /* Num of continuous iterations with no job freed. */
    while (mem_freed < mem_tofree) {
        long long delta;
        dictEntry *de;

        /* Get a random job, check if it is a job we can evict safely,
         * whic happens in the following two cases:
         * 1) Acknowledged jobs.
         * 2) Jobs with retry set to 0 which were already delivered.
         * Release it in the above two cases, otherwise keep counting the
         * number of iterations we failed to free jobs. */
        de = FUNC1(server.jobs);
        delta = (long long) FUNC10();

        /* If there are no jobs at all, try with idle queues. Otherwise
         * there is nothing we can release. */
        if (de == NULL) {
            if (FUNC2() == 0) return C_ERR;
        } else {
            job *job = FUNC0(de);
            if ((job->state == JOB_STATE_ACKED) ||
                (job->retry == 0 && job->flags & JOB_FLAG_DELIVERED))
            {
                FUNC9(job);
                FUNC3(job);
                not_freed = 0;
            } else {
                not_freed++;
            }
        }

        delta -= (long long) FUNC10();
        mem_freed += delta;

        /* If no object was freed in the latest N iterations or we are here
         * for more than 1 or 2 milliseconds, return to the caller with a
         * failure return value. */
        if (not_freed > DISQUE_NOT_FREED_MAX_LEN || (FUNC8() - latency) > 1) {
            FUNC6(latency);
            FUNC5("eviction-cycle",latency);
            return C_ERR; /* nothing to free... */
        }
    }
    FUNC6(latency);
    FUNC5("eviction-cycle",latency);
    return C_OK;
}