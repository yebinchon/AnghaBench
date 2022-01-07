
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int interrupt_callback; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int pts; scalar_t__ data; } ;
struct TYPE_9__ {int pts_written_nr; int * pts_written; int flush_count; } ;
struct TYPE_8__ {int ret; scalar_t__ sleep_time; int recover_after; } ;
typedef TYPE_1__ FailingMuxerPacketData ;
typedef TYPE_2__ FailingMuxerContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_EXIT ;
 scalar_t__ SLEEPTIME_10_MS ;
 int av_packet_unref (TYPE_3__*) ;
 int av_usleep (scalar_t__) ;
 scalar_t__ ff_check_interrupt (int *) ;

__attribute__((used)) static int failing_write_packet(AVFormatContext *avf, AVPacket *pkt)
{
    FailingMuxerContext *ctx = avf->priv_data;
    int ret = 0;
    if (!pkt) {
        ctx->flush_count++;
    } else {
        FailingMuxerPacketData *data = (FailingMuxerPacketData*) pkt->data;

        if (!data->recover_after) {
            data->ret = 0;
        } else {
            data->recover_after--;
        }

        ret = data->ret;

        if (data->sleep_time) {
            int64_t slept = 0;
            while (slept < data->sleep_time) {
                if (ff_check_interrupt(&avf->interrupt_callback))
                    return AVERROR_EXIT;
                av_usleep(SLEEPTIME_10_MS);
                slept += SLEEPTIME_10_MS;
            }
        }

        if (!ret) {
            ctx->pts_written[ctx->pts_written_nr++] = pkt->pts;
            av_packet_unref(pkt);
        }
    }
    return ret;
}
