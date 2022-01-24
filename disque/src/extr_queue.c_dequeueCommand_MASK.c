#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ state; } ;
typedef  TYPE_1__ job ;
struct TYPE_10__ {int argc; TYPE_4__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 scalar_t__ JOB_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_4__**,int) ; 

void FUNC4(client *c) {
    int j, dequeued = 0;

    if (FUNC3(c,c->argv+1,c->argc-1) == C_ERR) return;

    /* Enqueue all the jobs in active state. */
    for (j = 1; j < c->argc; j++) {
        job *job = FUNC2(c->argv[j]->ptr);
        if (job == NULL) continue;

        if (job->state == JOB_STATE_QUEUED && FUNC1(job) == C_OK)
            dequeued++;
    }
    FUNC0(c,dequeued);
}