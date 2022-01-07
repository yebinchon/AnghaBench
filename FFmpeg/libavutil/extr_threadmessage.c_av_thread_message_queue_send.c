
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ AVThreadMessageQueue ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int av_thread_message_queue_send_locked (TYPE_1__*,void*,unsigned int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int av_thread_message_queue_send(AVThreadMessageQueue *mq,
                                 void *msg,
                                 unsigned flags)
{
    return AVERROR(ENOSYS);

}
