
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int cond_send; int fifo; scalar_t__ elsize; void* free_func; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int av_fifo_drain (int ,int) ;
 int av_fifo_generic_peek_at (int ,TYPE_1__*,int,scalar_t__,int ) ;
 int av_fifo_size (int ) ;
 int free_func_wrap ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void av_thread_message_flush(AVThreadMessageQueue *mq)
{
}
