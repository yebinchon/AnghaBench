#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sl; } ;
typedef  TYPE_1__ queue ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  id; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ job ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  JOB_ID_LEN ; 
 scalar_t__ JOB_STATE_ACTIVE ; 
 scalar_t__ JOB_STATE_QUEUED ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC4(job *job) {
    if (job->state != JOB_STATE_QUEUED) return C_ERR;
    queue *q = FUNC0(job->queue);
    if (!q) return C_ERR;
    FUNC1(FUNC3(q->sl,job));
    job->state = JOB_STATE_ACTIVE; /* Up to the caller to override this. */
    FUNC2(LL_VERBOSE,"DE-QUEUED %.*s", JOB_ID_LEN, job->id);
    return C_OK;
}