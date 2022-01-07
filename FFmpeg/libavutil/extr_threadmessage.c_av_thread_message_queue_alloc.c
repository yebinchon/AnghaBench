
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int elsize; int lock; int cond_recv; int cond_send; int fifo; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int AVERROR (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 unsigned int INT_MAX ;
 int av_fifo_alloc (unsigned int) ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;

int av_thread_message_queue_alloc(AVThreadMessageQueue **mq,
                                  unsigned nelem,
                                  unsigned elsize)
{
    *mq = ((void*)0);
    return AVERROR(ENOSYS);

}
