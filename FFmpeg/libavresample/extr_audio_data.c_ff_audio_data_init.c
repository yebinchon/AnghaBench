
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_6__ {int sample_size; int planes; int stride; int allocated_samples; int nb_samples; int sample_fmt; int channels; int allocated_channels; int read_only; char const* name; int samples_align; scalar_t__ allow_realloc; int ** data; scalar_t__ is_planar; int * class; } ;
typedef TYPE_1__ AudioData ;


 int AVERROR (int ) ;
 int AVRESAMPLE_MAX_CHANNELS ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int audio_data_class ;
 int av_get_bytes_per_sample (int) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int calc_ptr_alignment (TYPE_1__*) ;
 scalar_t__ ff_sample_fmt_is_planar (int,int) ;
 int memset (TYPE_1__*,int ,int) ;

int ff_audio_data_init(AudioData *a, uint8_t * const *src, int plane_size,
                       int channels, int nb_samples,
                       enum AVSampleFormat sample_fmt, int read_only,
                       const char *name)
{
    int p;

    memset(a, 0, sizeof(*a));
    a->class = &audio_data_class;

    if (channels < 1 || channels > AVRESAMPLE_MAX_CHANNELS) {
        av_log(a, AV_LOG_ERROR, "invalid channel count: %d\n", channels);
        return AVERROR(EINVAL);
    }

    a->sample_size = av_get_bytes_per_sample(sample_fmt);
    if (!a->sample_size) {
        av_log(a, AV_LOG_ERROR, "invalid sample format\n");
        return AVERROR(EINVAL);
    }
    a->is_planar = ff_sample_fmt_is_planar(sample_fmt, channels);
    a->planes = a->is_planar ? channels : 1;
    a->stride = a->sample_size * (a->is_planar ? 1 : channels);

    for (p = 0; p < (a->is_planar ? channels : 1); p++) {
        if (!src[p]) {
            av_log(a, AV_LOG_ERROR, "invalid NULL pointer for src[%d]\n", p);
            return AVERROR(EINVAL);
        }
        a->data[p] = src[p];
    }
    a->allocated_samples = nb_samples * !read_only;
    a->nb_samples = nb_samples;
    a->sample_fmt = sample_fmt;
    a->channels = channels;
    a->allocated_channels = channels;
    a->read_only = read_only;
    a->allow_realloc = 0;
    a->name = name ? name : "{no name}";

    calc_ptr_alignment(a);
    a->samples_align = plane_size / a->stride;

    return 0;
}
