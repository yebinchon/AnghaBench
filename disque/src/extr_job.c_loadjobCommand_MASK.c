#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ state; scalar_t__ etime; } ;
typedef  TYPE_2__ job ;
struct TYPE_13__ {int flags; TYPE_1__** argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_14__ {scalar_t__ unixtime; scalar_t__ aof_enqueue_jobs_once; } ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int CLIENT_AOF_CLIENT ; 
 scalar_t__ C_OK ; 
 scalar_t__ JOB_STATE_ACTIVE ; 
 scalar_t__ JOB_STATE_QUEUED ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SER_STORAGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(client *c) {
    if (!(c->flags & CLIENT_AOF_CLIENT)) {
        FUNC0(c,"LOADJOB is a special command only processed from AOF");
        return;
    }
    job *job = FUNC1(c->argv[1]->ptr,FUNC6(c->argv[1]->ptr),NULL,SER_STORAGE);

    /* We expect to be able to read back what we serialized. */
    if (job == NULL) {
        FUNC7(LL_WARNING,
            "Unrecoverable error loading AOF: corrupted LOADJOB data.");
        FUNC3(1);
    }

    int enqueue_job = 0;
    if (job->state == JOB_STATE_QUEUED) {
        if (server.aof_enqueue_jobs_once) enqueue_job = 1;
        job->state = JOB_STATE_ACTIVE;
    }

    /* Check if the job expired before registering it. */
    if (job->etime <= server.unixtime) {
        FUNC4(job);
        return;
    }

    /* Register the job, and if needed enqueue it: we put jobs back into
     * queues only if enqueue-jobs-at-next-restart option is set, that is,
     * when a controlled restart happens. */
    if (FUNC5(job) == C_OK && enqueue_job)
        FUNC2(job,0);
}