
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct oggopus_private {int need_comments; int pre_skip; } ;
struct ogg_stream {int pstart; int flags; int psize; struct oggopus_private* private; int * buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_10__ {int channels; int sample_rate; int seek_preroll; int extradata; int initial_padding; int codec_id; int codec_type; } ;
struct TYPE_9__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_8__ {TYPE_6__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_OPUS ;
 int AV_RL16 (int *) ;
 int AV_RL8 (int *) ;
 int ENOMEM ;
 int OGG_FLAG_BOS ;
 int OPUS_HEAD_SIZE ;
 int OPUS_SEEK_PREROLL_MS ;
 int av_freep (int *) ;
 struct oggopus_private* av_mallocz (int) ;
 int av_rescale (int ,int,int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;
 scalar_t__ ff_alloc_extradata (TYPE_6__*,int) ;
 int ff_vorbis_stream_comment (TYPE_2__*,TYPE_1__*,int *,int) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int opus_header(AVFormatContext *avf, int idx)
{
    struct ogg *ogg = avf->priv_data;
    struct ogg_stream *os = &ogg->streams[idx];
    AVStream *st = avf->streams[idx];
    struct oggopus_private *priv = os->private;
    uint8_t *packet = os->buf + os->pstart;

    if (!priv) {
        priv = os->private = av_mallocz(sizeof(*priv));
        if (!priv)
            return AVERROR(ENOMEM);
    }

    if (os->flags & OGG_FLAG_BOS) {
        if (os->psize < OPUS_HEAD_SIZE || (AV_RL8(packet + 8) & 0xF0) != 0)
            return AVERROR_INVALIDDATA;
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = AV_CODEC_ID_OPUS;
        st->codecpar->channels = AV_RL8(packet + 9);

        priv->pre_skip = AV_RL16(packet + 10);
        st->codecpar->initial_padding = priv->pre_skip;




        av_freep(&st->codecpar->extradata);
        if (ff_alloc_extradata(st->codecpar, os->psize))
            return AVERROR(ENOMEM);

        memcpy(st->codecpar->extradata, packet, os->psize);

        st->codecpar->sample_rate = 48000;
        st->codecpar->seek_preroll = av_rescale(OPUS_SEEK_PREROLL_MS,
                                                st->codecpar->sample_rate, 1000);
        avpriv_set_pts_info(st, 64, 1, 48000);
        priv->need_comments = 1;
        return 1;
    }

    if (priv->need_comments) {
        if (os->psize < 8 || memcmp(packet, "OpusTags", 8))
            return AVERROR_INVALIDDATA;
        ff_vorbis_stream_comment(avf, st, packet + 8, os->psize - 8);
        priv->need_comments--;
        return 1;
    }

    return 0;
}
