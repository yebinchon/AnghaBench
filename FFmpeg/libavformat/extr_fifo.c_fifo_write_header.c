
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int writer_thread; } ;
typedef TYPE_1__ FifoContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int) ;
 int AV_LOG_ERROR ;
 int av_err2str (int) ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int fifo_consumer_thread ;
 int pthread_create (int *,int *,int ,TYPE_2__*) ;

__attribute__((used)) static int fifo_write_header(AVFormatContext *avf)
{
    FifoContext * fifo = avf->priv_data;
    int ret;

    ret = pthread_create(&fifo->writer_thread, ((void*)0), fifo_consumer_thread, avf);
    if (ret) {
        av_log(avf, AV_LOG_ERROR, "Failed to start thread: %s\n",
               av_err2str(AVERROR(ret)));
        ret = AVERROR(ret);
    }

    return ret;
}
