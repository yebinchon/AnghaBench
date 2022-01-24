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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ job ;
struct TYPE_7__ {scalar_t__ aof_state; } ;
struct TYPE_6__ {int /*<<< orphan*/ * deljob; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int /*<<< orphan*/  JOB_ID_LEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 TYPE_3__ server ; 
 TYPE_2__ shared ; 

void FUNC3(job *job) {
    if (server.aof_state == AOF_OFF) return;

    robj *jobid = FUNC0(job->id,JOB_ID_LEN);
    robj *argv[2] = {shared.deljob, jobid};
    FUNC2(argv,2);
    FUNC1(jobid);
}