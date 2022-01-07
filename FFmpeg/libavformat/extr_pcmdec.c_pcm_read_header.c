
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {TYPE_1__* iformat; int pb; TYPE_3__* priv_data; } ;
struct TYPE_14__ {TYPE_2__* codecpar; } ;
struct TYPE_13__ {int sample_rate; int channels; } ;
struct TYPE_12__ {int sample_rate; int channels; int bits_per_coded_sample; int block_align; int codec_id; int codec_type; } ;
struct TYPE_11__ {int * mime_type; int raw_codec_id; } ;
typedef TYPE_3__ PCMAudioDemuxerContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_LOG_ERROR ;
 int AV_OPT_SEARCH_CHILDREN ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_freep (int **) ;
 int av_get_bits_per_sample (int ) ;
 int av_log (TYPE_5__*,int ,char*,int *) ;
 int av_opt_get (int ,char*,int ,int **) ;
 int av_strncasecmp (int *,int *,size_t) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;
 int sscanf (int *,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (int *) ;
 int * strstr (int *,char*) ;

__attribute__((used)) static int pcm_read_header(AVFormatContext *s)
{
    PCMAudioDemuxerContext *s1 = s->priv_data;
    AVStream *st;
    uint8_t *mime_type = ((void*)0);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);


    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = s->iformat->raw_codec_id;
    st->codecpar->sample_rate = s1->sample_rate;
    st->codecpar->channels = s1->channels;

    av_opt_get(s->pb, "mime_type", AV_OPT_SEARCH_CHILDREN, &mime_type);
    if (mime_type && s->iformat->mime_type) {
        int rate = 0, channels = 0, little_endian = 0;
        size_t len = strlen(s->iformat->mime_type);
        if (!av_strncasecmp(s->iformat->mime_type, mime_type, len)) {
            uint8_t *options = mime_type + len;
            len = strlen(mime_type);
            while (options < mime_type + len) {
                options = strstr(options, ";");
                if (!options++)
                    break;
                if (!rate)
                    sscanf(options, " rate=%d", &rate);
                if (!channels)
                    sscanf(options, " channels=%d", &channels);
                if (!little_endian) {
                     char val[14];
                     if (sscanf(options, " endianness=%13s", val) == 1) {
                         little_endian = strcmp(val, "little-endian") == 0;
                     }
                }
            }
            if (rate <= 0) {
                av_log(s, AV_LOG_ERROR,
                       "Invalid sample_rate found in mime_type \"%s\"\n",
                       mime_type);
                av_freep(&mime_type);
                return AVERROR_INVALIDDATA;
            }
            st->codecpar->sample_rate = rate;
            if (channels > 0)
                st->codecpar->channels = channels;
            if (little_endian)
                st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
        }
    }
    av_freep(&mime_type);

    st->codecpar->bits_per_coded_sample =
        av_get_bits_per_sample(st->codecpar->codec_id);

    av_assert0(st->codecpar->bits_per_coded_sample > 0);

    st->codecpar->block_align =
        st->codecpar->bits_per_coded_sample * st->codecpar->channels / 8;

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
    return 0;
}
