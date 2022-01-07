
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ prev_packet; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ APNGMuxContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ av_packet_alloc () ;
 int av_packet_ref (scalar_t__,int *) ;
 int flush_packet (TYPE_1__*,int *) ;

__attribute__((used)) static int apng_write_packet(AVFormatContext *format_context, AVPacket *packet)
{
    APNGMuxContext *apng = format_context->priv_data;
    int ret;

    if (!apng->prev_packet) {
        apng->prev_packet = av_packet_alloc();
        if (!apng->prev_packet)
            return AVERROR(ENOMEM);

        av_packet_ref(apng->prev_packet, packet);
    } else {
        ret = flush_packet(format_context, packet);
        if (ret < 0)
            return ret;
    }

    return 0;
}
