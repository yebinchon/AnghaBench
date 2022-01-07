
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int overflow_flag_lock; scalar_t__ overflow_flag_lock_initialized; int queue; int avf; int format_options; } ;
typedef TYPE_1__ FifoContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_dict_free (int *) ;
 int av_thread_message_queue_free (int *) ;
 int avformat_free_context (int ) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void fifo_deinit(AVFormatContext *avf)
{
    FifoContext *fifo = avf->priv_data;

    av_dict_free(&fifo->format_options);
    avformat_free_context(fifo->avf);
    av_thread_message_queue_free(&fifo->queue);
    if (fifo->overflow_flag_lock_initialized)
        pthread_mutex_destroy(&fifo->overflow_flag_lock);
}
