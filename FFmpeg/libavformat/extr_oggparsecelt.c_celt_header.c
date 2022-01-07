
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct oggcelt_private {void* extra_headers_left; } ;
struct ogg_stream {int pstart; int psize; struct oggcelt_private* private; int * buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_12__ {scalar_t__ extradata; void* channels; void* sample_rate; int codec_id; int codec_type; } ;
struct TYPE_11__ {int magicsize; int magic; } ;
struct TYPE_10__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_9__ {TYPE_6__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_CELT ;
 void* AV_RL32 (int *) ;
 int AV_WL32 (scalar_t__,void*) ;
 int ENOMEM ;
 int av_free (struct oggcelt_private*) ;
 struct oggcelt_private* av_malloc (int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,void*) ;
 scalar_t__ ff_alloc_extradata (TYPE_6__*,int) ;
 TYPE_5__ ff_celt_codec ;
 int ff_vorbis_stream_comment (TYPE_2__*,TYPE_1__*,int *,int) ;
 int memcmp (int *,int ,int ) ;

__attribute__((used)) static int celt_header(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    struct oggcelt_private *priv = os->private;
    uint8_t *p = os->buf + os->pstart;

    if (os->psize == 60 &&
        !memcmp(p, ff_celt_codec.magic, ff_celt_codec.magicsize)) {


        uint32_t version, sample_rate, nb_channels;
        uint32_t overlap, extra_headers;

        priv = av_malloc(sizeof(struct oggcelt_private));
        if (!priv)
            return AVERROR(ENOMEM);
        if (ff_alloc_extradata(st->codecpar, 2 * sizeof(uint32_t)) < 0) {
            av_free(priv);
            return AVERROR(ENOMEM);
        }
        version = AV_RL32(p + 28);

        sample_rate = AV_RL32(p + 36);
        nb_channels = AV_RL32(p + 40);
        overlap = AV_RL32(p + 48);

        extra_headers = AV_RL32(p + 56);
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = AV_CODEC_ID_CELT;
        st->codecpar->sample_rate = sample_rate;
        st->codecpar->channels = nb_channels;
        if (sample_rate)
            avpriv_set_pts_info(st, 64, 1, sample_rate);

        if (os->private) {
            av_free(priv);
            priv = os->private;
        }
        os->private = priv;
        priv->extra_headers_left = 1 + extra_headers;

        AV_WL32(st->codecpar->extradata + 0, overlap);
        AV_WL32(st->codecpar->extradata + 4, version);
        return 1;
    } else if (priv && priv->extra_headers_left) {


        ff_vorbis_stream_comment(s, st, p, os->psize);
        priv->extra_headers_left--;
        return 1;
    } else {
        return 0;
    }
}
