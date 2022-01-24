#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  id; scalar_t__ awakeme; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_12__ {int /*<<< orphan*/  jobs; int /*<<< orphan*/  awakeme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ JOB_STATE_ACKED ; 
 scalar_t__ JOB_STATE_ACTIVE ; 
 scalar_t__ JOB_STATE_QUEUED ; 
 scalar_t__ JOB_STATE_WAIT_REPL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(job *j) {
    j = FUNC6(j->id);
    if (!j) return C_ERR;

    /* Emit a DELJOB command for all the job states but WAITREPL (no
     * ADDJOB emitted yer), and ACKED (DELJOB already emitted). */
    if (j->state >= JOB_STATE_ACTIVE && j->state != JOB_STATE_ACKED)
        FUNC0(j);

    /* Remove from awake skip list. */
    if (j->awakeme) FUNC8(FUNC10(server.awakeme,j));

    /* If the job is queued, remove from queue. */
    if (j->state == JOB_STATE_QUEUED) FUNC3(j);

    /* If there is a client blocked for this job, inform it that the job
     * got deleted, and unblock it. This should only happen when the job
     * gets expired before the requested replication level is reached. */
    if (j->state == JOB_STATE_WAIT_REPL) {
        client *c = FUNC5(j);
        FUNC9(j,NULL);
        FUNC1(c,
            FUNC7("-NOREPL job removed (expired?) before the requested "
                   "replication level was achieved\r\n"));
        /* Change job state otherwise unblockClientWaitingJobRepl() will
         * try to remove the job itself. */
        j->state = JOB_STATE_ACTIVE;
        FUNC2(j);
        FUNC11(c);
    }

    /* Remove the job from the jobs hash table. */
    FUNC4(server.jobs, j->id);
    return C_OK;
}