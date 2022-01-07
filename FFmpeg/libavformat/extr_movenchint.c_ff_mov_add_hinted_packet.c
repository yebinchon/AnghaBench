
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int size; int stream_index; int flags; int dts; int pts; int * data; } ;
struct TYPE_15__ {TYPE_1__* tracks; } ;
struct TYPE_14__ {int sample_queue; TYPE_4__* rtp_ctx; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ MOVMuxContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_KEY ;
 int ENOENT ;
 int ENOMEM ;
 int RTP_MAX_PACKET_SIZE ;
 int av_free (int *) ;
 int av_freep (int **) ;
 int av_init_packet (TYPE_3__*) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int ff_mov_write_packet (TYPE_4__*,TYPE_3__*) ;
 int ff_write_chained (TYPE_4__*,int ,TYPE_3__*,TYPE_4__*,int ) ;
 int ffio_open_dyn_packet_buf (int **,int ) ;
 int sample_queue_push (int *,int *,int,int) ;
 int sample_queue_retain (int *) ;
 int write_hint_packets (int *,int *,int,TYPE_1__*,int *) ;

int ff_mov_add_hinted_packet(AVFormatContext *s, AVPacket *pkt,
                             int track_index, int sample,
                             uint8_t *sample_data, int sample_size)
{
    MOVMuxContext *mov = s->priv_data;
    MOVTrack *trk = &mov->tracks[track_index];
    AVFormatContext *rtp_ctx = trk->rtp_ctx;
    uint8_t *buf = ((void*)0);
    int size;
    AVIOContext *hintbuf = ((void*)0);
    AVPacket hint_pkt;
    int ret = 0, count;

    if (!rtp_ctx)
        return AVERROR(ENOENT);
    if (!rtp_ctx->pb)
        return AVERROR(ENOMEM);

    if (sample_data)
        sample_queue_push(&trk->sample_queue, sample_data, sample_size, sample);
    else
        sample_queue_push(&trk->sample_queue, pkt->data, pkt->size, sample);


    ff_write_chained(rtp_ctx, 0, pkt, s, 0);



    size = avio_close_dyn_buf(rtp_ctx->pb, &buf);
    if ((ret = ffio_open_dyn_packet_buf(&rtp_ctx->pb,
                                        RTP_MAX_PACKET_SIZE)) < 0)
        goto done;

    if (size <= 0)
        goto done;


    if ((ret = avio_open_dyn_buf(&hintbuf)) < 0)
        goto done;
    av_init_packet(&hint_pkt);
    count = write_hint_packets(hintbuf, buf, size, trk, &hint_pkt.dts);
    av_freep(&buf);


    hint_pkt.size = size = avio_close_dyn_buf(hintbuf, &buf);
    hint_pkt.data = buf;
    hint_pkt.pts = hint_pkt.dts;
    hint_pkt.stream_index = track_index;
    if (pkt->flags & AV_PKT_FLAG_KEY)
        hint_pkt.flags |= AV_PKT_FLAG_KEY;
    if (count > 0)
        ff_mov_write_packet(s, &hint_pkt);
done:
    av_free(buf);
    sample_queue_retain(&trk->sample_queue);
    return ret;
}
