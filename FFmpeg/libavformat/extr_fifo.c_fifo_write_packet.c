
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {int overflow_flag; int overflow_flag_lock; scalar_t__ drop_pkts_on_overflow; int queue; } ;
struct TYPE_7__ {int pkt; int type; } ;
typedef TYPE_1__ FifoMessage ;
typedef TYPE_2__ FifoContext ;
typedef int AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int AV_THREAD_MESSAGE_NONBLOCK ;
 int EAGAIN ;
 int FIFO_FLUSH_OUTPUT ;
 int FIFO_WRITE_PACKET ;
 int av_init_packet (int *) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int av_packet_ref (int *,int *) ;
 int av_packet_unref (int *) ;
 int av_thread_message_queue_send (int ,TYPE_1__*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int fifo_write_packet(AVFormatContext *avf, AVPacket *pkt)
{
    FifoContext *fifo = avf->priv_data;
    FifoMessage msg = {.type = pkt ? FIFO_WRITE_PACKET : FIFO_FLUSH_OUTPUT};
    int ret;

    if (pkt) {
        av_init_packet(&msg.pkt);
        ret = av_packet_ref(&msg.pkt,pkt);
        if (ret < 0)
            return ret;
    }

    ret = av_thread_message_queue_send(fifo->queue, &msg,
                                       fifo->drop_pkts_on_overflow ?
                                       AV_THREAD_MESSAGE_NONBLOCK : 0);
    if (ret == AVERROR(EAGAIN)) {
        uint8_t overflow_set = 0;




        pthread_mutex_lock(&fifo->overflow_flag_lock);
        if (!fifo->overflow_flag)
            fifo->overflow_flag = overflow_set = 1;
        pthread_mutex_unlock(&fifo->overflow_flag_lock);

        if (overflow_set)
            av_log(avf, AV_LOG_WARNING, "FIFO queue full\n");
        ret = 0;
        goto fail;
    } else if (ret < 0) {
        goto fail;
    }

    return ret;
fail:
    if (pkt)
        av_packet_unref(&msg.pkt);
    return ret;
}
