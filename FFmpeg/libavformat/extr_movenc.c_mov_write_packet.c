
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef int int64_t ;
struct TYPE_25__ {TYPE_2__* priv_data; } ;
struct TYPE_24__ {size_t stream_index; int size; scalar_t__ dts; int * data; } ;
struct TYPE_23__ {int nb_streams; TYPE_1__* tracks; } ;
struct TYPE_22__ {scalar_t__ track_duration; scalar_t__ entry; int last_sample_is_subtitle_end; scalar_t__ mode; TYPE_14__* par; int pal_done; int palette; scalar_t__ is_unaligned_qt_rgb; int cover_image; TYPE_11__* st; } ;
struct TYPE_21__ {scalar_t__ codec_id; scalar_t__ codec_type; int bits_per_coded_sample; int width; scalar_t__ format; } ;
struct TYPE_20__ {int nb_frames; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ MOVMuxContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_MOV_TEXT ;
 scalar_t__ AV_CODEC_ID_RAWVIDEO ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_PIX_FMT_GRAY8 ;
 scalar_t__ AV_PIX_FMT_MONOBLACK ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 scalar_t__ MODE_MOV ;
 int av_log (TYPE_4__*,int ,char*,size_t) ;
 int av_packet_free (TYPE_3__**) ;
 int av_packet_ref (int *,TYPE_3__*) ;
 int ff_get_packet_palette (TYPE_4__*,TYPE_3__*,int,int ) ;
 int ff_reshuffle_raw_rgb (TYPE_4__*,TYPE_3__**,TYPE_14__*,int) ;
 scalar_t__ is_cover_image (TYPE_11__*) ;
 int mov_flush_fragment (TYPE_4__*,int) ;
 int mov_write_single_packet (TYPE_4__*,TYPE_3__*) ;
 int mov_write_subtitle_end_packet (TYPE_4__*,int,scalar_t__) ;

__attribute__((used)) static int mov_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    MOVMuxContext *mov = s->priv_data;
    MOVTrack *trk;

    if (!pkt) {
        mov_flush_fragment(s, 1);
        return 1;
    }

    trk = &mov->tracks[pkt->stream_index];

    if (is_cover_image(trk->st)) {
        int ret;

        if (trk->st->nb_frames >= 1) {
            if (trk->st->nb_frames == 1)
                av_log(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                       " ignoring.\n", pkt->stream_index);
            return 0;
        }

        if ((ret = av_packet_ref(&trk->cover_image, pkt)) < 0)
            return ret;

        return 0;
    } else {
        int i;

        if (!pkt->size)
            return mov_write_single_packet(s, pkt);
        for (i = 0; i < mov->nb_streams; i++) {
            MOVTrack *trk = &mov->tracks[i];
            int ret;

            if (trk->par->codec_id == AV_CODEC_ID_MOV_TEXT &&
                trk->track_duration < pkt->dts &&
                (trk->entry == 0 || !trk->last_sample_is_subtitle_end)) {
                ret = mov_write_subtitle_end_packet(s, i, trk->track_duration);
                if (ret < 0) return ret;
                trk->last_sample_is_subtitle_end = 1;
            }
        }

        if (trk->mode == MODE_MOV && trk->par->codec_type == AVMEDIA_TYPE_VIDEO) {
            AVPacket *opkt = pkt;
            int reshuffle_ret, ret;
            if (trk->is_unaligned_qt_rgb) {
                int64_t bpc = trk->par->bits_per_coded_sample != 15 ? trk->par->bits_per_coded_sample : 16;
                int expected_stride = ((trk->par->width * bpc + 15) >> 4)*2;
                reshuffle_ret = ff_reshuffle_raw_rgb(s, &pkt, trk->par, expected_stride);
                if (reshuffle_ret < 0)
                    return reshuffle_ret;
            } else
                reshuffle_ret = 0;
            if (trk->par->format == AV_PIX_FMT_PAL8 && !trk->pal_done) {
                ret = ff_get_packet_palette(s, opkt, reshuffle_ret, trk->palette);
                if (ret < 0)
                    goto fail;
                if (ret)
                    trk->pal_done++;
            } else if (trk->par->codec_id == AV_CODEC_ID_RAWVIDEO &&
                       (trk->par->format == AV_PIX_FMT_GRAY8 ||
                       trk->par->format == AV_PIX_FMT_MONOBLACK)) {
                for (i = 0; i < pkt->size; i++)
                    pkt->data[i] = ~pkt->data[i];
            }
            if (reshuffle_ret) {
                ret = mov_write_single_packet(s, pkt);
fail:
                if (reshuffle_ret)
                    av_packet_free(&pkt);
                return ret;
            }
        }

        return mov_write_single_packet(s, pkt);
    }
}
