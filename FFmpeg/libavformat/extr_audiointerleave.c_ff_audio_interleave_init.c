
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_12__ {int num; } ;
struct TYPE_11__ {TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int sample_size; int const* samples_per_frame; int* samples; int fifo_size; int fifo; TYPE_4__ time_base; } ;
struct TYPE_9__ {scalar_t__ codec_type; int channels; int codec_id; } ;
typedef TYPE_2__ AudioInterleaveContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_fifo_alloc_array (int,int) ;
 int av_get_bits_per_sample (int ) ;
 int av_log (TYPE_5__*,int ,char*) ;

int ff_audio_interleave_init(AVFormatContext *s,
                             const int *samples_per_frame,
                             AVRational time_base)
{
    int i;

    if (!samples_per_frame)
        return AVERROR(EINVAL);

    if (!time_base.num) {
        av_log(s, AV_LOG_ERROR, "timebase not set for audio interleave\n");
        return AVERROR(EINVAL);
    }
    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        AudioInterleaveContext *aic = st->priv_data;

        if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            aic->sample_size = (st->codecpar->channels *
                                av_get_bits_per_sample(st->codecpar->codec_id)) / 8;
            if (!aic->sample_size) {
                av_log(s, AV_LOG_ERROR, "could not compute sample size\n");
                return AVERROR(EINVAL);
            }
            aic->samples_per_frame = samples_per_frame;
            aic->samples = aic->samples_per_frame;
            aic->time_base = time_base;

            aic->fifo_size = 100* *aic->samples;
            if (!(aic->fifo= av_fifo_alloc_array(100, *aic->samples)))
                return AVERROR(ENOMEM);
        }
    }

    return 0;
}
