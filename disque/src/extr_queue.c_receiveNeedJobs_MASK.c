#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_11__ {int flags; } ;
typedef  TYPE_1__ queue ;
struct TYPE_12__ {scalar_t__ retry; } ;
typedef  TYPE_2__ job ;
typedef  int /*<<< orphan*/  clusterNode ;

/* Variables and functions */
 int NEEDJOBS_MAX_REQUEST ; 
 int QUEUE_FLAG_PAUSED_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(clusterNode *node, robj *qname, uint32_t count) {
    queue *q = FUNC3(qname);
    unsigned long qlen = FUNC5(q);
    uint32_t replyjobs = count; /* Number of jobs we are willing to provide. */
    uint32_t j;

    /* Ignore requests for jobs if:
     * 1) No such queue here, or queue is empty.
     * 2) We are actively importing jobs ourselves for this queue. */
    if (qlen == 0 || FUNC2(q) > 0) return;

    /* Ignore request if queue is paused in output. */
    if (q->flags & QUEUE_FLAG_PAUSED_OUT) return;

    /* To avoid that a single node is able to deplete our queue easily,
     * we provide the number of jobs requested only if we have more than
     * 2 times what it requested. Otherwise we provide at max half the jobs
     * we have, but always at least a single job. */
    if (qlen < count*2) replyjobs = qlen/2;
    if (replyjobs == 0) replyjobs = 1;

    job *jobs[NEEDJOBS_MAX_REQUEST];
    for (j = 0; j < replyjobs; j++) {
        jobs[j] = FUNC4(q,NULL);
        FUNC6(jobs[j] != NULL);
    }
    FUNC0(node,jobs,replyjobs);

    /* It's possible that we sent jobs with retry=0. Remove them from
     * the local node since to take duplicates does not make sense for
     * jobs having the replication level of 1 by contract. */
    for (j = 0; j < replyjobs; j++) {
        job *job = jobs[j];
        if (job->retry == 0) {
            FUNC7(job);
            FUNC1(job);
        }
    }
}