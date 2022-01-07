
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVMixCoeffType { ____Placeholder_AVMixCoeffType } AVMixCoeffType ;
typedef int chan_str ;
struct TYPE_3__ {int fmt; int coeff_type; int in_matrix_channels; int out_matrix_channels; char const* func_descr; int ptr_align; int samples_align; char const* func_descr_generic; int has_optimized_func; int avr; void* mix_generic; void* mix; } ;
typedef TYPE_1__ AudioMix ;


 int AV_LOG_DEBUG ;
 int av_get_sample_fmt_name (int) ;
 int av_log (int ,int ,char*,int ,int ,char*,char const*) ;
 int * coeff_type_names ;
 int snprintf (char*,int,char*,...) ;

void ff_audio_mix_set_func(AudioMix *am, enum AVSampleFormat fmt,
                           enum AVMixCoeffType coeff_type, int in_channels,
                           int out_channels, int ptr_align, int samples_align,
                           const char *descr, void *mix_func)
{
    if (fmt == am->fmt && coeff_type == am->coeff_type &&
        ( in_channels == am->in_matrix_channels || in_channels == 0) &&
        (out_channels == am->out_matrix_channels || out_channels == 0)) {
        char chan_str[16];
        am->mix = mix_func;
        am->func_descr = descr;
        am->ptr_align = ptr_align;
        am->samples_align = samples_align;
        if (ptr_align == 1 && samples_align == 1) {
            am->mix_generic = mix_func;
            am->func_descr_generic = descr;
        } else {
            am->has_optimized_func = 1;
        }
        if (in_channels) {
            if (out_channels)
                snprintf(chan_str, sizeof(chan_str), "[%d to %d] ",
                         in_channels, out_channels);
            else
                snprintf(chan_str, sizeof(chan_str), "[%d to any] ",
                         in_channels);
        } else if (out_channels) {
                snprintf(chan_str, sizeof(chan_str), "[any to %d] ",
                         out_channels);
        } else {
            snprintf(chan_str, sizeof(chan_str), "[any to any] ");
        }
        av_log(am->avr, AV_LOG_DEBUG, "audio_mix: found function: [fmt=%s] "
               "[c=%s] %s(%s)\n", av_get_sample_fmt_name(fmt),
               coeff_type_names[coeff_type], chan_str, descr);
    }
}
