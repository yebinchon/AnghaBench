
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int * pb; } ;
struct TYPE_6__ {int pos; int duration; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EIO ;
 int av_get_packet (int *,TYPE_1__*,int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_rb32 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    uint32_t chunk_size, payload_size;
    int ret;

    if (avio_feof(pb))
        return AVERROR_EOF;

    avio_skip(pb, 4);
    chunk_size = avio_rb32(pb);
    avio_skip(pb, 4);
    payload_size = avio_rb32(pb);

    if (chunk_size < payload_size + 16)
        return AVERROR(EIO);

    ret = av_get_packet(pb, pkt, payload_size);
    if (ret < 0)
        return ret;

    pkt->pos -= 16;
    pkt->duration = 1;
    avio_skip(pb, chunk_size - (ret + 16));

    return ret;
}
