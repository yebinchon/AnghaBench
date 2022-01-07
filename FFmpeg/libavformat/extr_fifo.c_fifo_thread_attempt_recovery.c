
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_22__ {TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_21__ {size_t stream_index; scalar_t__ pts; } ;
struct TYPE_20__ {scalar_t__ recovery_wait_time; scalar_t__ drop_pkts_on_overflow; scalar_t__ restart_with_keyframe; scalar_t__ max_recovery_attempts; scalar_t__ recovery_wait_streamtime; int write_trailer_ret; } ;
struct TYPE_19__ {TYPE_5__ pkt; } ;
struct TYPE_18__ {scalar_t__ last_recovery_ts; int drop_until_keyframe; scalar_t__ recovery_nr; scalar_t__ header_written; TYPE_6__* avf; } ;
struct TYPE_17__ {int time_base; } ;
typedef TYPE_2__ FifoThreadContext ;
typedef TYPE_3__ FifoMessage ;
typedef TYPE_4__ FifoContext ;
typedef int AVRational ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_INFO ;
 int AV_LOG_VERBOSE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 int EAGAIN ;
 scalar_t__ av_gettime_relative () ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 int fifo_thread_dispatch_message (TYPE_2__*,TYPE_3__*) ;
 int fifo_thread_process_recovery_failure (TYPE_2__*,TYPE_5__*,int) ;
 int fifo_thread_write_trailer (TYPE_2__*) ;
 int free_message (TYPE_3__*) ;
 scalar_t__ is_recoverable (TYPE_4__*,int) ;

__attribute__((used)) static int fifo_thread_attempt_recovery(FifoThreadContext *ctx, FifoMessage *msg, int err_no)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    AVPacket *pkt = &msg->pkt;
    int64_t time_since_recovery;
    int ret;

    if (!is_recoverable(fifo, err_no)) {
        ret = err_no;
        goto fail;
    }

    if (ctx->header_written) {
        fifo->write_trailer_ret = fifo_thread_write_trailer(ctx);
        ctx->header_written = 0;
    }

    if (!ctx->recovery_nr) {
        ctx->last_recovery_ts = fifo->recovery_wait_streamtime ?
                                AV_NOPTS_VALUE : 0;
    } else {
        if (fifo->recovery_wait_streamtime) {
            if (ctx->last_recovery_ts == AV_NOPTS_VALUE) {
                AVRational tb = avf->streams[pkt->stream_index]->time_base;
                time_since_recovery = av_rescale_q(pkt->pts - ctx->last_recovery_ts,
                                                   tb, AV_TIME_BASE_Q);
            } else {

                time_since_recovery = fifo->recovery_wait_time;
            }
        } else {
            time_since_recovery = av_gettime_relative() - ctx->last_recovery_ts;
        }

        if (time_since_recovery < fifo->recovery_wait_time)
            return AVERROR(EAGAIN);
    }

    ctx->recovery_nr++;

    if (fifo->max_recovery_attempts) {
        av_log(avf, AV_LOG_VERBOSE, "Recovery attempt #%d/%d\n",
               ctx->recovery_nr, fifo->max_recovery_attempts);
    } else {
        av_log(avf, AV_LOG_VERBOSE, "Recovery attempt #%d\n",
               ctx->recovery_nr);
    }

    if (fifo->restart_with_keyframe && fifo->drop_pkts_on_overflow)
        ctx->drop_until_keyframe = 1;

    ret = fifo_thread_dispatch_message(ctx, msg);
    if (ret < 0) {
        if (is_recoverable(fifo, ret)) {
            return fifo_thread_process_recovery_failure(ctx, pkt, ret);
        } else {
            goto fail;
        }
    } else {
        av_log(avf, AV_LOG_INFO, "Recovery successful\n");
        ctx->recovery_nr = 0;
    }

    return 0;

fail:
    free_message(msg);
    return ret;
}
