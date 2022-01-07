
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int sample_fmt; int sample_rate; void* surround_mix_level; void* center_mix_level; int lfe_mix_level; int channel_layout; } ;
struct TYPE_7__ {int matrix_encoding; int sample_fmt; int sample_rate; double maxval; int channel_layout; int sample_size; int channels; } ;
struct TYPE_9__ {int dual_mono_downmix; int dual_mono_right_only; scalar_t__ resample_needed; TYPE_2__ in; TYPE_1__ out; int * swresample; } ;
typedef TYPE_3__ hb_audio_resample_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int AV_CH_LAYOUT_STEREO ;
 int HB_AMIXDOWN_LEFT ;
 int HB_AMIXDOWN_RIGHT ;
 void* HB_MIXLEV_DEFAULT ;
 int HB_MIXLEV_ZERO ;
 int av_get_bytes_per_sample (int) ;
 int av_get_channel_layout_nb_channels (int ) ;
 int av_get_sample_fmt_name (int) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;
 TYPE_3__* calloc (int,int) ;
 int hb_audio_resample_free (TYPE_3__*) ;
 int hb_error (char*,...) ;
 int hb_ff_mixdown_xlat (int,int*) ;

hb_audio_resample_t* hb_audio_resample_init(enum AVSampleFormat sample_fmt,
                                            int sample_rate,
                                            int hb_amixdown, int normalize_mix)
{
    hb_audio_resample_t *resample = calloc(1, sizeof(hb_audio_resample_t));
    if (resample == ((void*)0))
    {
        hb_error("hb_audio_resample_init: failed to allocate resample");
        goto fail;
    }


    resample->swresample = ((void*)0);


    if (av_sample_fmt_is_planar(sample_fmt))
    {
        hb_error("hb_audio_resample_init: planar output not supported ('%s')",
                 av_get_sample_fmt_name(sample_fmt));
        goto fail;
    }


    int matrix_encoding;
    uint64_t channel_layout = hb_ff_mixdown_xlat(hb_amixdown, &matrix_encoding);





    if (hb_amixdown == HB_AMIXDOWN_LEFT || hb_amixdown == HB_AMIXDOWN_RIGHT)
    {
        channel_layout = AV_CH_LAYOUT_STEREO;
        resample->dual_mono_downmix = 1;
        resample->dual_mono_right_only = (hb_amixdown == HB_AMIXDOWN_RIGHT);
    }
    else
    {
        resample->dual_mono_downmix = 0;
    }


    resample->out.channels = av_get_channel_layout_nb_channels(channel_layout);
    resample->out.channel_layout = channel_layout;
    resample->out.matrix_encoding = matrix_encoding;
    resample->out.sample_fmt = sample_fmt;
    resample->out.sample_rate = sample_rate;
    if (normalize_mix)
    {
        resample->out.maxval = 1.0;
    }
    else
    {
        resample->out.maxval = 1000;
    }
    resample->out.sample_size = av_get_bytes_per_sample(sample_fmt);


    resample->in.sample_fmt = resample->out.sample_fmt;
    resample->in.sample_rate = resample->out.sample_rate;
    resample->in.channel_layout = resample->out.channel_layout;
    resample->in.lfe_mix_level = HB_MIXLEV_ZERO;
    resample->in.center_mix_level = HB_MIXLEV_DEFAULT;
    resample->in.surround_mix_level = HB_MIXLEV_DEFAULT;


    resample->resample_needed = 0;
    return resample;

fail:
    hb_audio_resample_free(resample);
    return ((void*)0);
}
