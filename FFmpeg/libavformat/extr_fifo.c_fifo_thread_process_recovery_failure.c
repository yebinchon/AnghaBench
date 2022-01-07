
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_10__ {scalar_t__ pts; } ;
struct TYPE_9__ {scalar_t__ max_recovery_attempts; scalar_t__ recovery_wait_streamtime; } ;
struct TYPE_8__ {scalar_t__ last_recovery_ts; scalar_t__ recovery_nr; TYPE_4__* avf; } ;
typedef TYPE_1__ FifoThreadContext ;
typedef TYPE_2__ FifoContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EAGAIN ;
 scalar_t__ av_err2str (int) ;
 scalar_t__ av_gettime_relative () ;
 int av_log (TYPE_4__*,int ,char*,...) ;

__attribute__((used)) static int fifo_thread_process_recovery_failure(FifoThreadContext *ctx, AVPacket *pkt,
                                                int err_no)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    int ret;

    av_log(avf, AV_LOG_INFO, "Recovery failed: %s\n",
           av_err2str(err_no));

    if (fifo->recovery_wait_streamtime) {
        if (pkt->pts == AV_NOPTS_VALUE)
            av_log(avf, AV_LOG_WARNING, "Packet does not contain presentation"
                   " timestamp, recovery will be attempted immediately");
        ctx->last_recovery_ts = pkt->pts;
    } else {
        ctx->last_recovery_ts = av_gettime_relative();
    }

    if (fifo->max_recovery_attempts &&
        ctx->recovery_nr >= fifo->max_recovery_attempts) {
        av_log(avf, AV_LOG_ERROR,
               "Maximal number of %d recovery attempts reached.\n",
               fifo->max_recovery_attempts);
        ret = err_no;
    } else {
        ret = AVERROR(EAGAIN);
    }

    return ret;
}
