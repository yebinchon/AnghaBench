
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pts; int dts; } ;
struct TYPE_7__ {int current_sub_idx; scalar_t__ nb_subs; TYPE_2__* subs; } ;
typedef TYPE_1__ FFDemuxSubtitlesQueue ;
typedef TYPE_2__ AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 scalar_t__ av_packet_ref (TYPE_2__*,TYPE_2__*) ;

int ff_subtitles_queue_read_packet(FFDemuxSubtitlesQueue *q, AVPacket *pkt)
{
    AVPacket *sub = q->subs + q->current_sub_idx;

    if (q->current_sub_idx == q->nb_subs)
        return AVERROR_EOF;
    if (av_packet_ref(pkt, sub) < 0) {
        return AVERROR(ENOMEM);
    }

    pkt->dts = pkt->pts;
    q->current_sub_idx++;
    return 0;
}
