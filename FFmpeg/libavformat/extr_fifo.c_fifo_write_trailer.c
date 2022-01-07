
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int write_trailer_ret; int writer_thread; int queue; } ;
typedef TYPE_1__ FifoContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int av_err2str (int) ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int av_thread_message_queue_set_err_recv (int ,int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static int fifo_write_trailer(AVFormatContext *avf)
{
    FifoContext *fifo= avf->priv_data;
    int ret;

    av_thread_message_queue_set_err_recv(fifo->queue, AVERROR_EOF);

    ret = pthread_join(fifo->writer_thread, ((void*)0));
    if (ret < 0) {
        av_log(avf, AV_LOG_ERROR, "pthread join error: %s\n",
               av_err2str(AVERROR(ret)));
        return AVERROR(ret);
    }

    ret = fifo->write_trailer_ret;
    return ret;
}
