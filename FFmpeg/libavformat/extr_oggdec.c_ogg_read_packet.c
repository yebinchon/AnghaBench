
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct ogg_stream {int pflags; int new_metadata_size; scalar_t__ new_metadata; scalar_t__ end_trimming; int pduration; scalar_t__ buf; scalar_t__ keyframe_seek; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef void* int64_t ;
struct TYPE_13__ {struct ogg* priv_data; int * streams; scalar_t__ io_repositioned; } ;
struct TYPE_12__ {int stream_index; int flags; void* pos; int duration; void* dts; void* pts; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_METADATA_UPDATE ;
 int AV_PKT_DATA_SKIP_SAMPLES ;
 int AV_PKT_FLAG_KEY ;
 int AV_WL32 (int *,scalar_t__) ;
 int ENOMEM ;
 int av_freep (scalar_t__*) ;
 int av_new_packet (TYPE_1__*,int) ;
 int * av_packet_new_side_data (TYPE_1__*,int ,int) ;
 int av_packet_unref (TYPE_1__*) ;
 int memcpy (int *,scalar_t__,int) ;
 void* ogg_calc_pts (TYPE_2__*,int,void**) ;
 int ogg_packet (TYPE_2__*,int*,int*,int*,void**) ;
 int ogg_reset (TYPE_2__*) ;
 int ogg_validate_keyframe (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int ogg_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    struct ogg *ogg;
    struct ogg_stream *os;
    int idx, ret;
    int pstart, psize;
    int64_t fpos, pts, dts;

    if (s->io_repositioned) {
        ogg_reset(s);
        s->io_repositioned = 0;
    }


retry:
    do {
        ret = ogg_packet(s, &idx, &pstart, &psize, &fpos);
        if (ret < 0)
            return ret;
    } while (idx < 0 || !s->streams[idx]);

    ogg = s->priv_data;
    os = ogg->streams + idx;


    pts = ogg_calc_pts(s, idx, &dts);
    ogg_validate_keyframe(s, idx, pstart, psize);

    if (os->keyframe_seek && !(os->pflags & AV_PKT_FLAG_KEY))
        goto retry;
    os->keyframe_seek = 0;


    ret = av_new_packet(pkt, psize);
    if (ret < 0)
        return ret;
    pkt->stream_index = idx;
    memcpy(pkt->data, os->buf + pstart, psize);

    pkt->pts = pts;
    pkt->dts = dts;
    pkt->flags = os->pflags;
    pkt->duration = os->pduration;
    pkt->pos = fpos;

    if (os->end_trimming) {
        uint8_t *side_data = av_packet_new_side_data(pkt,
                                                     AV_PKT_DATA_SKIP_SAMPLES,
                                                     10);
        if(!side_data)
            goto fail;
        AV_WL32(side_data + 4, os->end_trimming);
        os->end_trimming = 0;
    }

    if (os->new_metadata) {
        uint8_t *side_data = av_packet_new_side_data(pkt,
                                                     AV_PKT_DATA_METADATA_UPDATE,
                                                     os->new_metadata_size);
        if(!side_data)
            goto fail;

        memcpy(side_data, os->new_metadata, os->new_metadata_size);
        av_freep(&os->new_metadata);
        os->new_metadata_size = 0;
    }

    return psize;
fail:
    av_packet_unref(pkt);
    return AVERROR(ENOMEM);
}
