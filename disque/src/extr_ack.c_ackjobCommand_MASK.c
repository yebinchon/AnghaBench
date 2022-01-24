#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ state; } ;
typedef  TYPE_2__ job ;
struct TYPE_18__ {int argc; TYPE_5__** argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_20__ {TYPE_1__* cluster; } ;
struct TYPE_19__ {char* ptr; } ;
struct TYPE_16__ {int size; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 scalar_t__ JOB_STATE_ACKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 TYPE_8__ server ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_5__**,int) ; 

void FUNC12(client *c) {
    int j, known = 0;

    if (FUNC11(c,c->argv+1,c->argc-1) == C_ERR) return;

    /* Perform the appropriate action for each job. */
    for (j = 1; j < c->argc; j++) {
        job *job = FUNC5(c->argv[j]->ptr);
        /* Case 1: No such job. Create one just to hold the ACK. However
         * if the cluster is composed by a single node we are sure the job
         * does not exist in the whole cluster, so do this only if the
         * cluster size is greater than one. */
        if (job == NULL && server.cluster->size > 1 && !FUNC6()) {
            char *id = c->argv[j]->ptr;
            int ttl = FUNC4(id);

            /* TTL is even for "at most once" jobs. In this case we
             * don't need to create a dummy hack. */
            if (ttl & 1) {
                job = FUNC2(id,JOB_STATE_ACKED,0,0);
                FUNC9(job);
                FUNC8(FUNC7(job) == C_OK);
            }
        }
        /* Case 2: Job exists and is not acknowledged. Change state. */
        else if (job && job->state != JOB_STATE_ACKED) {
            FUNC3(job); /* Safe to call if job is not queued. */
            FUNC0(job);
            known++;
        }
        /* Anyway... start a GC attempt on the acked job. */
        if (job) FUNC10(job);
    }
    FUNC1(c,known);
}