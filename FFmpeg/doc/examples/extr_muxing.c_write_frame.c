
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int stream_index; } ;
struct TYPE_8__ {int index; int time_base; } ;
typedef TYPE_1__ AVStream ;
typedef int AVRational ;
typedef TYPE_2__ AVPacket ;
typedef int AVFormatContext ;


 int av_interleaved_write_frame (int *,TYPE_2__*) ;
 int av_packet_rescale_ts (TYPE_2__*,int const,int ) ;
 int log_packet (int *,TYPE_2__*) ;

__attribute__((used)) static int write_frame(AVFormatContext *fmt_ctx, const AVRational *time_base, AVStream *st, AVPacket *pkt)
{

    av_packet_rescale_ts(pkt, *time_base, st->time_base);
    pkt->stream_index = st->index;


    log_packet(fmt_ctx, pkt);
    return av_interleaved_write_frame(fmt_ctx, pkt);
}
