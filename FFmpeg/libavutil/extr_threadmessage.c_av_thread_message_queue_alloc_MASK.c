#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int elsize; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond_recv; int /*<<< orphan*/  cond_send; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AVThreadMessageQueue ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(AVThreadMessageQueue **mq,
                                  unsigned nelem,
                                  unsigned elsize)
{
#if HAVE_THREADS
    AVThreadMessageQueue *rmq;
    int ret = 0;

    if (nelem > INT_MAX / elsize)
        return AVERROR(EINVAL);
    if (!(rmq = av_mallocz(sizeof(*rmq))))
        return AVERROR(ENOMEM);
    if ((ret = pthread_mutex_init(&rmq->lock, NULL))) {
        av_free(rmq);
        return AVERROR(ret);
    }
    if ((ret = pthread_cond_init(&rmq->cond_recv, NULL))) {
        pthread_mutex_destroy(&rmq->lock);
        av_free(rmq);
        return AVERROR(ret);
    }
    if ((ret = pthread_cond_init(&rmq->cond_send, NULL))) {
        pthread_cond_destroy(&rmq->cond_recv);
        pthread_mutex_destroy(&rmq->lock);
        av_free(rmq);
        return AVERROR(ret);
    }
    if (!(rmq->fifo = av_fifo_alloc(elsize * nelem))) {
        pthread_cond_destroy(&rmq->cond_send);
        pthread_cond_destroy(&rmq->cond_recv);
        pthread_mutex_destroy(&rmq->lock);
        av_free(rmq);
        return AVERROR(ENOMEM);
    }
    rmq->elsize = elsize;
    *mq = rmq;
    return 0;
#else
    *mq = NULL;
    return FUNC0(ENOSYS);
#endif /* HAVE_THREADS */
}