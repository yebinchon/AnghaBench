
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int elsize; int lock; int fifo; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int av_fifo_size (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int av_thread_message_queue_nb_elems(AVThreadMessageQueue *mq)
{







    return AVERROR(ENOSYS);

}
