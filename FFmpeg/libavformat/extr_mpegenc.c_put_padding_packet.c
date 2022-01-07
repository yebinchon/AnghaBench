
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int is_mpeg2; } ;
typedef TYPE_1__ MpegMuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int PADDING_STREAM ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;

__attribute__((used)) static void put_padding_packet(AVFormatContext *ctx, AVIOContext *pb,
                               int packet_bytes)
{
    MpegMuxContext *s = ctx->priv_data;
    int i;

    avio_wb32(pb, PADDING_STREAM);
    avio_wb16(pb, packet_bytes - 6);
    if (!s->is_mpeg2) {
        avio_w8(pb, 0x0f);
        packet_bytes -= 7;
    } else
        packet_bytes -= 6;

    for (i = 0; i < packet_bytes; i++)
        avio_w8(pb, 0xff);
}
