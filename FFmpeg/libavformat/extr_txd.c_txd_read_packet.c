
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pb; } ;
struct TYPE_7__ {scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;



 unsigned int TXD_MARKER ;
 unsigned int TXD_MARKER2 ;

 int av_get_packet (int *,TYPE_1__*,unsigned int) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 scalar_t__ avio_feof (int *) ;
 unsigned int avio_rl32 (int *) ;
 int avio_skip (int *,unsigned int) ;

__attribute__((used)) static int txd_read_packet(AVFormatContext *s, AVPacket *pkt) {
    AVIOContext *pb = s->pb;
    unsigned int id, chunk_size, marker;
    int ret;

next_chunk:
    id = avio_rl32(pb);
    chunk_size = avio_rl32(pb);
    marker = avio_rl32(pb);

    if (avio_feof(s->pb))
        return AVERROR_EOF;
    if (marker != TXD_MARKER && marker != TXD_MARKER2) {
        av_log(s, AV_LOG_ERROR, "marker does not match\n");
        return AVERROR_INVALIDDATA;
    }

    switch (id) {
    case 129:
        if (chunk_size > 100)
            break;
    case 131:
        avio_skip(s->pb, chunk_size);
    case 130:
    case 128:
        goto next_chunk;
    default:
        av_log(s, AV_LOG_ERROR, "unknown chunk id %i\n", id);
        return AVERROR_INVALIDDATA;
    }

    ret = av_get_packet(s->pb, pkt, chunk_size);
    if (ret < 0)
        return ret;
    pkt->stream_index = 0;

    return 0;
}
