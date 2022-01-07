
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err_recv; int lock; int cond_recv; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void av_thread_message_queue_set_err_recv(AVThreadMessageQueue *mq,
                                          int err)
{






}
