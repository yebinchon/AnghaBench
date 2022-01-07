
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int flags; scalar_t__ stream_index; int pts; } ;
struct TYPE_11__ {size_t duration; TYPE_1__* index_entries; } ;
struct TYPE_10__ {size_t pts; } ;
struct TYPE_9__ {int pos; } ;
typedef TYPE_2__ CineDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_PKT_FLAG_KEY ;
 int SEEK_SET ;
 int av_get_packet (int *,TYPE_4__*,int) ;
 int avio_rl32 (int *) ;
 int avio_seek (int *,int ,int ) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int cine_read_packet(AVFormatContext *avctx, AVPacket *pkt)
{
    CineDemuxContext *cine = avctx->priv_data;
    AVStream *st = avctx->streams[0];
    AVIOContext *pb = avctx->pb;
    int n, size, ret;

    if (cine->pts >= st->duration)
        return AVERROR_EOF;

    avio_seek(pb, st->index_entries[cine->pts].pos, SEEK_SET);
    n = avio_rl32(pb);
    if (n < 8)
        return AVERROR_INVALIDDATA;
    avio_skip(pb, n - 8);
    size = avio_rl32(pb);

    ret = av_get_packet(pb, pkt, size);
    if (ret < 0)
        return ret;

    pkt->pts = cine->pts++;
    pkt->stream_index = 0;
    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}
