
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* priv_data; } ;
struct TYPE_13__ {TYPE_1__* codecpar; int duration; } ;
struct TYPE_12__ {int error; TYPE_2__* vi; } ;
struct TYPE_11__ {int sample_type; int audio_samples_per_second; int num_audio_samples; int nchannels; } ;
struct TYPE_10__ {int codec_id; int channels; int sample_rate; int codec_type; } ;
typedef TYPE_3__ AviSynthContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_UNKNOWN ;
 int AVMEDIA_TYPE_AUDIO ;





 int AV_CODEC_ID_PCM_F32LE ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_CODEC_ID_PCM_S24LE ;
 int AV_CODEC_ID_PCM_S32LE ;
 int AV_CODEC_ID_PCM_U8 ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int ) ;

__attribute__((used)) static int avisynth_create_stream_audio(AVFormatContext *s, AVStream *st)
{
    AviSynthContext *avs = s->priv_data;

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->sample_rate = avs->vi->audio_samples_per_second;
    st->codecpar->channels = avs->vi->nchannels;
    st->duration = avs->vi->num_audio_samples;
    avpriv_set_pts_info(st, 64, 1, avs->vi->audio_samples_per_second);

    switch (avs->vi->sample_type) {
    case 128:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
        break;
    case 131:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
        break;
    case 130:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S24LE;
        break;
    case 129:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S32LE;
        break;
    case 132:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_F32LE;
        break;
    default:
        av_log(s, AV_LOG_ERROR,
               "unknown AviSynth sample type %d\n", avs->vi->sample_type);
        avs->error = 1;
        return AVERROR_UNKNOWN;
    }
    return 0;
}
