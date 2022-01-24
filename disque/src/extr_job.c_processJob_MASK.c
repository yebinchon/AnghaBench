#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flags; } ;
typedef  TYPE_1__ queue ;
typedef  scalar_t__ mstime_t ;
struct TYPE_15__ {scalar_t__ awakeme; scalar_t__ etime; scalar_t__ state; int flags; scalar_t__ qtime; int retry; int /*<<< orphan*/  queue; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ job ;
struct TYPE_16__ {scalar_t__ unixtime; scalar_t__ mstime; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISQUE_TIME_ERR ; 
 int JOB_FLAG_BCAST_WILLQUEUE ; 
 int /*<<< orphan*/  JOB_ID_LEN ; 
 scalar_t__ JOB_STATE_ACKED ; 
 scalar_t__ JOB_STATE_ACTIVE ; 
 scalar_t__ JOB_STATE_QUEUED ; 
 scalar_t__ JOB_WILLQUEUE_ADVANCE ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int QUEUE_FLAG_PAUSED_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 

void FUNC11(job *j) {
    mstime_t old_awakeme = j->awakeme;

    FUNC3(LL_VERBOSE,"PROCESSING",j);

    /* Remove expired jobs. */
    if (j->etime <= server.unixtime) {
        FUNC6(LL_VERBOSE,"EVICT %.*s", JOB_ID_LEN, j->id);
        FUNC8(j);
        FUNC2(j);
        return;
    }

    /* Broadcast WILLQUEUE to inform other nodes we are going to re-queue
     * the job shortly. */
    if ((j->state == JOB_STATE_ACTIVE ||
         j->state == JOB_STATE_QUEUED) &&
         j->flags & JOB_FLAG_BCAST_WILLQUEUE &&
         j->qtime-JOB_WILLQUEUE_ADVANCE <= server.mstime)
    {
        if (j->state != JOB_STATE_QUEUED) FUNC0(j);
        /* Clear the WILLQUEUE flag, so that the job will be rescheduled
         * for when we need to queue it (otherwise it is scheduled
         * JOB_WILLQUEUE_ADVANCE milliseconds before). */
        j->flags &= ~JOB_FLAG_BCAST_WILLQUEUE;
        FUNC9(j,0);
    }

    /* Requeue job if needed. This will also care about putting the job
     * into the queue for the first time for delayed jobs, including the
     * ones with retry=0. */
    if (j->state == JOB_STATE_ACTIVE && j->qtime <= server.mstime) {
        queue *q;

        /* We need to check if the queue is paused in input. If that's
         * the case, we do:
         *
         * If retry != 0, postpone the enqueue-time of "retry" time.
         *
         * If retry == 0 (at most once job), this is a job with a delay that
         * will never be queued again, and we are the only owner.
         * In such a case, put it into the queue, or the job will be leaked. */
        if (j->retry != 0 &&
            (q = FUNC4(j->queue)) != NULL &&
            q->flags & QUEUE_FLAG_PAUSED_IN)
        {
            FUNC10(j,server.mstime+
                                 j->retry*1000+
                                 FUNC5(DISQUE_TIME_ERR));
        } else {
            FUNC1(j,0);
        }
    }

    /* Update job re-queue time if job is already queued. */
    if (j->state == JOB_STATE_QUEUED && j->qtime <= server.mstime &&
        j->retry)
    {
        j->flags |= JOB_FLAG_BCAST_WILLQUEUE;
        j->qtime = server.mstime +
                   j->retry*1000 +
                   FUNC5(DISQUE_TIME_ERR);
        FUNC9(j,0);
    }

    /* Try a job garbage collection. */
    if (j->state == JOB_STATE_ACKED) {
        FUNC7(j);
        FUNC9(j,0);
    }

    if (old_awakeme == j->awakeme)
        FUNC3(LL_WARNING, "~~~WARNING~~~ NOT PROCESSABLE JOB", j);
}