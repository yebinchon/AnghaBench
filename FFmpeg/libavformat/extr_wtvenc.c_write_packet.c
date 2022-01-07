
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;
typedef struct TYPE_19__ TYPE_16__ ;


struct TYPE_19__ {int size; } ;
struct TYPE_23__ {int serial; int nb_sp_pairs; int nb_st_pairs; int last_pts; int last_serial; TYPE_18__* st_pairs; TYPE_2__* sp_pairs; TYPE_16__ thumbnail; } ;
typedef TYPE_3__ WtvContext ;
struct TYPE_26__ {TYPE_4__** streams; TYPE_3__* priv_data; int * pb; } ;
struct TYPE_25__ {size_t stream_index; int pts; scalar_t__ size; int data; } ;
struct TYPE_24__ {TYPE_1__* codecpar; } ;
struct TYPE_22__ {int serial; } ;
struct TYPE_21__ {scalar_t__ codec_id; } ;
struct TYPE_20__ {int value; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 scalar_t__ AV_CODEC_ID_MJPEG ;
 int AV_NOPTS_VALUE ;
 scalar_t__ INDEX_BASE ;
 scalar_t__ WTV_PAD8 (scalar_t__) ;
 int add_serial_pair (TYPE_18__**,int*,int,int) ;
 int av_packet_ref (TYPE_16__*,TYPE_5__*) ;
 int avio_write (int *,int ,scalar_t__) ;
 int ff_check_h264_startcode (TYPE_6__*,TYPE_4__*,TYPE_5__*) ;
 int ff_data_guid ;
 int write_chunk_header (TYPE_6__*,int *,scalar_t__,scalar_t__) ;
 int write_pad (int *,scalar_t__) ;
 int write_sync (TYPE_6__*) ;
 int write_timestamp (TYPE_6__*,TYPE_5__*) ;

__attribute__((used)) static int write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    AVStream *st = s->streams[pkt->stream_index];

    if (st->codecpar->codec_id == AV_CODEC_ID_MJPEG && !wctx->thumbnail.size) {
        av_packet_ref(&wctx->thumbnail, pkt);
        return 0;
    } else if (st->codecpar->codec_id == AV_CODEC_ID_H264) {
        int ret = ff_check_h264_startcode(s, st, pkt);
        if (ret < 0)
            return ret;
    }


    if (wctx->serial - (wctx->nb_sp_pairs ? wctx->sp_pairs[wctx->nb_sp_pairs - 1].serial : 0) >= 50)
        write_sync(s);


    if (pkt->pts != AV_NOPTS_VALUE && pkt->pts - (wctx->nb_st_pairs ? wctx->st_pairs[wctx->nb_st_pairs - 1].value : 0) >= 5000000)
        add_serial_pair(&wctx->st_pairs, &wctx->nb_st_pairs, wctx->serial, pkt->pts);

    if (pkt->pts != AV_NOPTS_VALUE && pkt->pts > wctx->last_pts) {
        wctx->last_pts = pkt->pts;
        wctx->last_serial = wctx->serial;
    }


    write_timestamp(s, pkt);

    write_chunk_header(s, &ff_data_guid, pkt->size, INDEX_BASE + pkt->stream_index);
    avio_write(pb, pkt->data, pkt->size);
    write_pad(pb, WTV_PAD8(pkt->size) - pkt->size);

    wctx->serial++;
    return 0;
}
