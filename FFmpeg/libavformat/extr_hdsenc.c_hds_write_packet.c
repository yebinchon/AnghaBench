
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {TYPE_4__** streams; TYPE_3__* priv_data; } ;
struct TYPE_17__ {size_t stream_index; scalar_t__ dts; int flags; } ;
struct TYPE_16__ {size_t id; scalar_t__ first_dts; int time_base; TYPE_1__* codecpar; } ;
struct TYPE_15__ {scalar_t__ min_frag_duration; TYPE_2__* streams; } ;
struct TYPE_14__ {int fragment_index; scalar_t__ frag_start_ts; scalar_t__ last_ts; scalar_t__ first_stream; int ctx; scalar_t__ packets_written; int has_video; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ HDSContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int AV_TIME_BASE_Q ;
 scalar_t__ av_compare_ts (scalar_t__,int ,int,int ) ;
 int ff_write_chained (int ,scalar_t__,TYPE_5__*,TYPE_6__*,int ) ;
 int hds_flush (TYPE_6__*,TYPE_2__*,int ,scalar_t__) ;

__attribute__((used)) static int hds_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    HDSContext *c = s->priv_data;
    AVStream *st = s->streams[pkt->stream_index];
    OutputStream *os = &c->streams[s->streams[pkt->stream_index]->id];
    int64_t end_dts = os->fragment_index * (int64_t)c->min_frag_duration;
    int ret;

    if (st->first_dts == AV_NOPTS_VALUE)
        st->first_dts = pkt->dts;

    if ((!os->has_video || st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) &&
        av_compare_ts(pkt->dts - st->first_dts, st->time_base,
                      end_dts, AV_TIME_BASE_Q) >= 0 &&
        pkt->flags & AV_PKT_FLAG_KEY && os->packets_written) {

        if ((ret = hds_flush(s, os, 0, pkt->dts)) < 0)
            return ret;
    }



    if (!os->packets_written)
        os->frag_start_ts = pkt->dts;
    os->last_ts = pkt->dts;

    os->packets_written++;
    return ff_write_chained(os->ctx, pkt->stream_index - os->first_stream, pkt, s, 0);
}
