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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int BIO_NUM_OPS ; 
 size_t DISQUE_THREAD_STACK_SIZE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  bioProcessBackgroundJobs ; 
 int /*<<< orphan*/ * bio_jobs ; 
 int /*<<< orphan*/ * bio_mutex ; 
 int /*<<< orphan*/ * bio_newjob_cond ; 
 scalar_t__* bio_pending ; 
 int /*<<< orphan*/ * bio_step_cond ; 
 int /*<<< orphan*/ * bio_threads ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9(void) {
    pthread_attr_t attr;
    pthread_t thread;
    size_t stacksize;
    int j;

    /* Initialization of state vars and objects */
    for (j = 0; j < BIO_NUM_OPS; j++) {
        FUNC7(&bio_mutex[j],NULL);
        FUNC5(&bio_newjob_cond[j],NULL);
        FUNC5(&bio_step_cond[j],NULL);
        bio_jobs[j] = FUNC1();
        bio_pending[j] = 0;
    }

    /* Set the stack size as by default it may be small in some system */
    FUNC3(&attr);
    FUNC2(&attr,&stacksize);
    if (!stacksize) stacksize = 1; /* The world is full of Solaris Fixes */
    while (stacksize < DISQUE_THREAD_STACK_SIZE) stacksize *= 2;
    FUNC4(&attr, stacksize);

    /* Ready to spawn our threads. We use the single argument the thread
     * function accepts in order to pass the job ID the thread is
     * responsible of. */
    for (j = 0; j < BIO_NUM_OPS; j++) {
        void *arg = (void*)(unsigned long) j;
        if (FUNC6(&thread,&attr,bioProcessBackgroundJobs,arg) != 0) {
            FUNC8(LL_WARNING,"Fatal: Can't initialize Background Jobs.");
            FUNC0(1);
        }
        bio_threads[j] = thread;
    }
}