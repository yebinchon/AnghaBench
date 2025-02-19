
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {int sample_size; int planes; int stride; int sample_fmt; int channels; int allocated_channels; int allow_realloc; char const* name; scalar_t__ read_only; int * class; scalar_t__ is_planar; } ;
typedef TYPE_1__ AudioData ;


 int AVRESAMPLE_MAX_CHANNELS ;
 int audio_data_class ;
 int av_free (TYPE_1__*) ;
 int av_get_bytes_per_sample (int) ;
 TYPE_1__* av_mallocz (int) ;
 int calc_ptr_alignment (TYPE_1__*) ;
 int ff_audio_data_realloc (TYPE_1__*,int) ;
 scalar_t__ ff_sample_fmt_is_planar (int,int) ;

AudioData *ff_audio_data_alloc(int channels, int nb_samples,
                               enum AVSampleFormat sample_fmt, const char *name)
{
    AudioData *a;
    int ret;

    if (channels < 1 || channels > AVRESAMPLE_MAX_CHANNELS)
        return ((void*)0);

    a = av_mallocz(sizeof(*a));
    if (!a)
        return ((void*)0);

    a->sample_size = av_get_bytes_per_sample(sample_fmt);
    if (!a->sample_size) {
        av_free(a);
        return ((void*)0);
    }
    a->is_planar = ff_sample_fmt_is_planar(sample_fmt, channels);
    a->planes = a->is_planar ? channels : 1;
    a->stride = a->sample_size * (a->is_planar ? 1 : channels);

    a->class = &audio_data_class;
    a->sample_fmt = sample_fmt;
    a->channels = channels;
    a->allocated_channels = channels;
    a->read_only = 0;
    a->allow_realloc = 1;
    a->name = name ? name : "{no name}";

    if (nb_samples > 0) {
        ret = ff_audio_data_realloc(a, nb_samples);
        if (ret < 0) {
            av_free(a);
            return ((void*)0);
        }
        return a;
    } else {
        calc_ptr_alignment(a);
        return a;
    }
}
