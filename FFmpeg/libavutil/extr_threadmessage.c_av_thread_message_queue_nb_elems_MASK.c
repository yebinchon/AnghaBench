#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int elsize; int /*<<< orphan*/  lock; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AVThreadMessageQueue ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(AVThreadMessageQueue *mq)
{
#if HAVE_THREADS
    int ret;
    pthread_mutex_lock(&mq->lock);
    ret = av_fifo_size(mq->fifo);
    pthread_mutex_unlock(&mq->lock);
    return ret / mq->elsize;
#else
    return FUNC0(ENOSYS);
#endif
}