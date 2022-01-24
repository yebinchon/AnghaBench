#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bio_job {scalar_t__ arg1; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {struct bio_job* value; } ;
typedef  TYPE_1__ listNode ;

/* Variables and functions */
 unsigned long BIO_AOF_FSYNC ; 
 unsigned long BIO_CLOSE_FILE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/ * bio_jobs ; 
 int /*<<< orphan*/ * bio_mutex ; 
 int /*<<< orphan*/ * bio_newjob_cond ; 
 int /*<<< orphan*/ * bio_pending ; 
 int /*<<< orphan*/ * bio_step_cond ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct bio_job*) ; 

void *FUNC18(void *arg) {
    struct bio_job *job;
    unsigned long type = (unsigned long) arg;
    sigset_t sigset;

    /* Make the thread killable at any time, so that bioKillThreads()
     * can work reliably. */
    FUNC9(PTHREAD_CANCEL_ENABLE, NULL);
    FUNC10(PTHREAD_CANCEL_ASYNCHRONOUS, NULL);

    FUNC7(&bio_mutex[type]);
    /* Block SIGALRM so we are sure that only the main thread will
     * receive the watchdog signal. */
    FUNC15(&sigset);
    FUNC14(&sigset, SIGALRM);
    if (FUNC11(SIG_BLOCK, &sigset, NULL))
        FUNC12(LL_WARNING,
            "Warning: can't mask SIGALRM in bio.c thread: %s", FUNC16(errno));

    while(1) {
        listNode *ln;

        /* The loop always starts with the lock hold. */
        if (FUNC4(bio_jobs[type]) == 0) {
            FUNC6(&bio_newjob_cond[type],&bio_mutex[type]);
            continue;
        }
        /* Pop the job from the queue. */
        ln = FUNC3(bio_jobs[type]);
        job = ln->value;
        /* It is now possible to unlock the background system as we know have
         * a stand alone job structure to process.*/
        FUNC8(&bio_mutex[type]);

        /* Process the job accordingly to its type. */
        if (type == BIO_CLOSE_FILE) {
            FUNC1((long)job->arg1);
        } else if (type == BIO_AOF_FSYNC) {
            FUNC0((long)job->arg1);
        } else {
            FUNC13("Wrong job type in bioProcessBackgroundJobs().");
        }
        FUNC17(job);

        /* Unblock threads blocked on bioWaitStepOfType() if any. */
        FUNC5(&bio_step_cond[type]);

        /* Lock again before reiterating the loop, if there are no longer
         * jobs to process we'll block again in pthread_cond_wait(). */
        FUNC7(&bio_mutex[type]);
        FUNC2(bio_jobs[type],ln);
        bio_pending[type]--;
    }
}