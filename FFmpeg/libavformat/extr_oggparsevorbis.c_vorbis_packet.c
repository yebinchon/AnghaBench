
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct oggvorbis_private {int final_pts; int final_duration; int vp; } ;
struct ogg_stream {void* lastpts; int flags; int granule; int pstart; int segp; int psize; int nsegs; int* segments; int lastdts; int pduration; int pflags; int * buf; struct oggvorbis_private* private; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_5__ {void* start_time; void* duration; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 void* AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_CORRUPT ;
 void* FFMAX (int,int ) ;
 int OGG_FLAG_EOS ;
 int VORBIS_FLAG_COMMENT ;
 int av_vorbis_parse_frame_flags (int ,int *,int,int*) ;
 int av_vorbis_parse_reset (int ) ;
 int vorbis_update_metadata (TYPE_2__*,int) ;

__attribute__((used)) static int vorbis_packet(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    struct oggvorbis_private *priv = os->private;
    int duration, flags = 0;

    if (!priv->vp)
        return AVERROR_INVALIDDATA;





    if ((!os->lastpts || os->lastpts == AV_NOPTS_VALUE) && !(os->flags & OGG_FLAG_EOS) && (int64_t)os->granule>=0) {
        int seg, d;
        uint8_t *last_pkt = os->buf + os->pstart;
        uint8_t *next_pkt = last_pkt;

        av_vorbis_parse_reset(priv->vp);
        duration = 0;
        seg = os->segp;
        d = av_vorbis_parse_frame_flags(priv->vp, last_pkt, 1, &flags);
        if (d < 0) {
            os->pflags |= AV_PKT_FLAG_CORRUPT;
            return 0;
        } else if (flags & VORBIS_FLAG_COMMENT) {
            vorbis_update_metadata(s, idx);
            flags = 0;
        }
        duration += d;
        last_pkt = next_pkt = next_pkt + os->psize;
        for (; seg < os->nsegs; seg++) {
            if (os->segments[seg] < 255) {
                int d = av_vorbis_parse_frame_flags(priv->vp, last_pkt, 1, &flags);
                if (d < 0) {
                    duration = os->granule;
                    break;
                } else if (flags & VORBIS_FLAG_COMMENT) {
                    vorbis_update_metadata(s, idx);
                    flags = 0;
                }
                duration += d;
                last_pkt = next_pkt + os->segments[seg];
            }
            next_pkt += os->segments[seg];
        }
        os->lastpts =
        os->lastdts = os->granule - duration;

        if (!os->granule && duration)
            os->lastpts = os->lastdts = AV_NOPTS_VALUE;

        if (s->streams[idx]->start_time == AV_NOPTS_VALUE) {
            s->streams[idx]->start_time = FFMAX(os->lastpts, 0);
            if (s->streams[idx]->duration != AV_NOPTS_VALUE)
                s->streams[idx]->duration -= s->streams[idx]->start_time;
        }
        priv->final_pts = AV_NOPTS_VALUE;
        av_vorbis_parse_reset(priv->vp);
    }


    if (os->psize > 0) {
        duration = av_vorbis_parse_frame_flags(priv->vp, os->buf + os->pstart, 1, &flags);
        if (duration < 0) {
            os->pflags |= AV_PKT_FLAG_CORRUPT;
            return 0;
        } else if (flags & VORBIS_FLAG_COMMENT) {
            vorbis_update_metadata(s, idx);
            flags = 0;
        }
        os->pduration = duration;
    }





    if (os->flags & OGG_FLAG_EOS) {
        if (os->lastpts != AV_NOPTS_VALUE) {
            priv->final_pts = os->lastpts;
            priv->final_duration = 0;
        }
        if (os->segp == os->nsegs)
            os->pduration = os->granule - priv->final_pts - priv->final_duration;
        priv->final_duration += os->pduration;
    }

    return 0;
}
