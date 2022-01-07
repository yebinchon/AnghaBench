
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int prev_pkt; int have_end; } ;
typedef TYPE_1__ GIFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int GIF_TRAILER ;
 int av_packet_free (int *) ;
 int avio_w8 (int *,int ) ;
 int gif_write_packet (TYPE_2__*,int *) ;

__attribute__((used)) static int gif_write_trailer(AVFormatContext *s)
{
    GIFContext *gif = s->priv_data;
    AVIOContext *pb = s->pb;

    if (!gif->prev_pkt)
        return AVERROR(EINVAL);

    gif_write_packet(s, ((void*)0));

    if (!gif->have_end)
        avio_w8(pb, GIF_TRAILER);
    av_packet_free(&gif->prev_pkt);

    return 0;
}
