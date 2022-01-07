
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int cond_recv; int cond_send; int fifo; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int av_fifo_freep (int *) ;
 int av_freep (TYPE_1__**) ;
 int av_thread_message_flush (TYPE_1__*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void av_thread_message_queue_free(AVThreadMessageQueue **mq)
{
}
