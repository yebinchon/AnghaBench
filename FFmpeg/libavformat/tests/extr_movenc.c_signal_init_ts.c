
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream_index; scalar_t__ pts; scalar_t__ dts; int * data; scalar_t__ size; } ;
typedef TYPE_1__ AVPacket ;


 scalar_t__ audio_dts ;
 int av_init_packet (TYPE_1__*) ;
 int av_write_frame (int ,TYPE_1__*) ;
 int ctx ;
 scalar_t__ video_dts ;

__attribute__((used)) static void signal_init_ts(void)
{
    AVPacket pkt;
    av_init_packet(&pkt);
    pkt.size = 0;
    pkt.data = ((void*)0);

    pkt.stream_index = 0;
    pkt.dts = video_dts;
    pkt.pts = 0;
    av_write_frame(ctx, &pkt);

    pkt.stream_index = 1;
    pkt.dts = pkt.pts = audio_dts;
    av_write_frame(ctx, &pkt);
}
