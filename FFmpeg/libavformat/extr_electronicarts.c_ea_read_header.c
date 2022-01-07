
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_15__ {TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ start_time; int index; TYPE_1__* codecpar; } ;
struct TYPE_13__ {int num_channels; int sample_rate; int bytes; int audio_stream_index; scalar_t__ audio_codec; int alpha; int video; } ;
struct TYPE_12__ {int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; scalar_t__ codec_tag; scalar_t__ codec_id; int codec_type; } ;
typedef TYPE_2__ EaDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EIO ;
 int ENOMEM ;
 int av_log (TYPE_4__*,int ,char*,int) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 scalar_t__ init_video_stream (TYPE_4__*,int *) ;
 scalar_t__ process_ea_header (TYPE_4__*) ;

__attribute__((used)) static int ea_read_header(AVFormatContext *s)
{
    EaDemuxContext *ea = s->priv_data;
    AVStream *st;

    if (process_ea_header(s)<=0)
        return AVERROR(EIO);

    if (init_video_stream(s, &ea->video) || init_video_stream(s, &ea->alpha))
        return AVERROR(ENOMEM);

    if (ea->audio_codec) {
        if (ea->num_channels <= 0 || ea->num_channels > 2) {
            av_log(s, AV_LOG_WARNING,
                   "Unsupported number of channels: %d\n", ea->num_channels);
            ea->audio_codec = 0;
            return 1;
        }
        if (ea->sample_rate <= 0) {
            av_log(s, AV_LOG_ERROR,
                   "Unsupported sample rate: %d\n", ea->sample_rate);
            ea->audio_codec = 0;
            return 1;
        }
        if (ea->bytes <= 0 || ea->bytes > 2) {
            av_log(s, AV_LOG_ERROR,
                   "Invalid number of bytes per sample: %d\n", ea->bytes);
            ea->audio_codec = AV_CODEC_ID_NONE;
            return 1;
        }


        st = avformat_new_stream(s, ((void*)0));
        if (!st)
            return AVERROR(ENOMEM);
        avpriv_set_pts_info(st, 33, 1, ea->sample_rate);
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = ea->audio_codec;
        st->codecpar->codec_tag = 0;
        st->codecpar->channels = ea->num_channels;
        st->codecpar->sample_rate = ea->sample_rate;
        st->codecpar->bits_per_coded_sample = ea->bytes * 8;
        st->codecpar->bit_rate = (int64_t)st->codecpar->channels *
                                              st->codecpar->sample_rate *
                                              st->codecpar->bits_per_coded_sample / 4;
        st->codecpar->block_align = st->codecpar->channels *
                                              st->codecpar->bits_per_coded_sample;
        ea->audio_stream_index = st->index;
        st->start_time = 0;
    }

    return 1;
}
