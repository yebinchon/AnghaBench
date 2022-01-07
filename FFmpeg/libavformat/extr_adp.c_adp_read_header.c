
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int channels; int sample_rate; int channel_layout; int codec_id; int codec_type; } ;
struct TYPE_11__ {int seekable; } ;
struct TYPE_10__ {TYPE_4__* pb; } ;
struct TYPE_9__ {TYPE_7__* codecpar; int duration; scalar_t__ start_time; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ADPCM_DTK ;
 int ENOMEM ;
 int av_get_audio_frame_duration2 (TYPE_7__*,int ) ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 int avio_size (TYPE_4__*) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int adp_read_header(AVFormatContext *s)
{
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_DTK;
    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    st->codecpar->channels = 2;
    st->codecpar->sample_rate = 48000;
    st->start_time = 0;
    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL)
        st->duration = av_get_audio_frame_duration2(st->codecpar, avio_size(s->pb));

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
