
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int last_chunk_pos; int last_timestamp_pos; } ;
typedef TYPE_2__ WtvContext ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
struct TYPE_12__ {TYPE_1__** streams; TYPE_2__* priv_data; int * pb; } ;
struct TYPE_11__ {size_t stream_index; int pts; int flags; } ;
struct TYPE_9__ {TYPE_5__* codecpar; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int INDEX_BASE ;
 int avio_wl64 (int *,int) ;
 int ff_timestamp_guid ;
 int write_chunk_header (TYPE_4__*,int *,int,int) ;
 int write_pad (int *,int) ;

__attribute__((used)) static void write_timestamp(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    AVCodecParameters *par = s->streams[pkt->stream_index]->codecpar;

    write_chunk_header(s, &ff_timestamp_guid, 56, 0x40000000 | (INDEX_BASE + pkt->stream_index));
    write_pad(pb, 8);
    avio_wl64(pb, pkt->pts == AV_NOPTS_VALUE ? -1 : pkt->pts);
    avio_wl64(pb, pkt->pts == AV_NOPTS_VALUE ? -1 : pkt->pts);
    avio_wl64(pb, pkt->pts == AV_NOPTS_VALUE ? -1 : pkt->pts);
    avio_wl64(pb, 0);
    avio_wl64(pb, par->codec_type == AVMEDIA_TYPE_VIDEO && (pkt->flags & AV_PKT_FLAG_KEY) ? 1 : 0);
    avio_wl64(pb, 0);

    wctx->last_timestamp_pos = wctx->last_chunk_pos;
}
