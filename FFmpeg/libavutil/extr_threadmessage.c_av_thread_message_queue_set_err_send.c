
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err_send; int lock; int cond_send; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void av_thread_message_queue_set_err_send(AVThreadMessageQueue *mq,
                                          int err)
{






}
