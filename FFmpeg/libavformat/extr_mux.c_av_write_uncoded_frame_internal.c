
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_15__ {TYPE_11__* oformat; } ;
struct TYPE_14__ {int pkt_duration; int pts; } ;
struct TYPE_13__ {int stream_index; int flags; int duration; int dts; int pts; int size; void* data; } ;
struct TYPE_12__ {int write_uncoded_frame; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_UNCODED_FRAME ;
 int ENOSYS ;
 int UNCODED_FRAME_PACKET_SIZE ;
 int av_assert0 (TYPE_11__*) ;
 int av_init_packet (TYPE_1__*) ;
 int av_interleaved_write_frame (TYPE_3__*,TYPE_1__*) ;
 int av_write_frame (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int av_write_uncoded_frame_internal(AVFormatContext *s, int stream_index,
                                           AVFrame *frame, int interleaved)
{
    AVPacket pkt, *pktp;

    av_assert0(s->oformat);
    if (!s->oformat->write_uncoded_frame)
        return AVERROR(ENOSYS);

    if (!frame) {
        pktp = ((void*)0);
    } else {
        pktp = &pkt;
        av_init_packet(&pkt);
        pkt.data = (void *)frame;
        pkt.size = UNCODED_FRAME_PACKET_SIZE;
        pkt.pts =
        pkt.dts = frame->pts;
        pkt.duration = frame->pkt_duration;
        pkt.stream_index = stream_index;
        pkt.flags |= AV_PKT_FLAG_UNCODED_FRAME;
    }

    return interleaved ? av_interleaved_write_frame(s, pktp) :
                         av_write_frame(s, pktp);
}
