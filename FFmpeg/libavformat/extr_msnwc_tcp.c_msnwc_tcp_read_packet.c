
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int * pb; } ;
struct TYPE_6__ {int pts; int dts; int flags; scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_PKT_FLAG_KEY ;
 int HEADER_SIZE ;
 int av_get_packet (int *,TYPE_1__*,int) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int msnwc_tcp_read_packet(AVFormatContext *ctx, AVPacket *pkt)
{
    AVIOContext *pb = ctx->pb;
    uint16_t keyframe;
    uint32_t size, timestamp;
    int ret;

    avio_skip(pb, 1);
    avio_skip(pb, 2);
    avio_skip(pb, 2);
    keyframe = avio_rl16(pb);
    size = avio_rl32(pb);
    avio_skip(pb, 4);
    avio_skip(pb, 4);
    timestamp = avio_rl32(pb);

    if (!size)
        return AVERROR_INVALIDDATA;

    if ((ret = av_get_packet(pb, pkt, size)) < 0)
        return ret;

    avio_skip(pb, 1);

    pkt->pts = timestamp;
    pkt->dts = timestamp;
    pkt->stream_index = 0;



    if (keyframe & 1)
        pkt->flags |= AV_PKT_FLAG_KEY;

    return HEADER_SIZE + size;
}
