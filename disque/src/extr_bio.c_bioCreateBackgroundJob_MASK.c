#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bio_job {void* arg3; void* arg2; void* arg1; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/ * bio_jobs ; 
 int /*<<< orphan*/ * bio_mutex ; 
 int /*<<< orphan*/ * bio_newjob_cond ; 
 int /*<<< orphan*/ * bio_pending ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bio_job*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bio_job* FUNC5 (int) ; 

void FUNC6(int type, void *arg1, void *arg2, void *arg3) {
    struct bio_job *job = FUNC5(sizeof(*job));

    job->time = FUNC4(NULL);
    job->arg1 = arg1;
    job->arg2 = arg2;
    job->arg3 = arg3;
    FUNC2(&bio_mutex[type]);
    FUNC0(bio_jobs[type],job);
    bio_pending[type]++;
    FUNC1(&bio_newjob_cond[type]);
    FUNC3(&bio_mutex[type]);
}