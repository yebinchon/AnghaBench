
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; int index; } ;
struct TYPE_10__ {int audio_sample_rate; scalar_t__ audio_type; int audio_channels; int audio_bits; int audio_stream_index; } ;
struct TYPE_9__ {scalar_t__ codec_id; int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; int channel_layout; scalar_t__ codec_tag; int codec_type; } ;
typedef TYPE_2__ IPMVEContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 scalar_t__ AV_CODEC_ID_INTERPLAY_DPCM ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int init_audio(AVFormatContext *s)
{
    IPMVEContext *ipmovie = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 32, 1, ipmovie->audio_sample_rate);
    ipmovie->audio_stream_index = st->index;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = ipmovie->audio_type;
    st->codecpar->codec_tag = 0;
    st->codecpar->channels = ipmovie->audio_channels;
    st->codecpar->channel_layout = st->codecpar->channels == 1 ? AV_CH_LAYOUT_MONO :
                                                            AV_CH_LAYOUT_STEREO;
    st->codecpar->sample_rate = ipmovie->audio_sample_rate;
    st->codecpar->bits_per_coded_sample = ipmovie->audio_bits;
    st->codecpar->bit_rate = st->codecpar->channels * st->codecpar->sample_rate *
        st->codecpar->bits_per_coded_sample;
    if (st->codecpar->codec_id == AV_CODEC_ID_INTERPLAY_DPCM)
        st->codecpar->bit_rate /= 2;
    st->codecpar->block_align = st->codecpar->channels * st->codecpar->bits_per_coded_sample;

    return 0;
}
