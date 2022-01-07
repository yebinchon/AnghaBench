
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_13__ {scalar_t__ dither_method; int ch_map_info; } ;
struct TYPE_12__ {int apply_map; scalar_t__ method; int channels; int mute_dither_threshold; int mute_reset_threshold; TYPE_1__* state; void* ac_in; void* flt_data; void* ac_out; void* s16_data; int ns_coef_a; int ns_coef_b; int ddsp; int * ch_map_info; } ;
struct TYPE_11__ {int mute; int seed; } ;
typedef TYPE_1__ DitherState ;
typedef TYPE_2__ DitherContext ;
typedef int AVLFG ;
typedef TYPE_3__ AVAudioResampleContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_RESAMPLE_DITHER_TRIANGULAR_HP ;
 scalar_t__ AV_RESAMPLE_DITHER_TRIANGULAR_NS ;
 int AV_SAMPLE_FMT_FLTP ;
 scalar_t__ AV_SAMPLE_FMT_S16 ;
 int AV_SAMPLE_FMT_S16P ;
 int FFMAX (int,int) ;
 int MUTE_THRESHOLD_SEC ;
 int av_get_bytes_per_sample (int) ;
 scalar_t__ av_get_packed_sample_fmt (int) ;
 int av_get_sample_fmt_name (int) ;
 int av_lfg_get (int *) ;
 int av_lfg_init (int *,int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 void* av_mallocz (int) ;
 int dither_init (int *,scalar_t__) ;
 void* ff_audio_convert_alloc (TYPE_3__*,int,int,int,int,int) ;
 void* ff_audio_data_alloc (int,int,int,char*) ;
 int ff_dither_free (TYPE_2__**) ;
 int generate_dither_noise (TYPE_2__*,TYPE_1__*,int ) ;
 int lrintf (int) ;
 int ns_44_coef_a ;
 int ns_44_coef_b ;
 int ns_48_coef_a ;
 int ns_48_coef_b ;

DitherContext *ff_dither_alloc(AVAudioResampleContext *avr,
                               enum AVSampleFormat out_fmt,
                               enum AVSampleFormat in_fmt,
                               int channels, int sample_rate, int apply_map)
{
    AVLFG seed_gen;
    DitherContext *c;
    int ch;

    if (av_get_packed_sample_fmt(out_fmt) != AV_SAMPLE_FMT_S16 ||
        av_get_bytes_per_sample(in_fmt) <= 2) {
        av_log(avr, AV_LOG_ERROR, "dithering %s to %s is not supported\n",
               av_get_sample_fmt_name(in_fmt), av_get_sample_fmt_name(out_fmt));
        return ((void*)0);
    }

    c = av_mallocz(sizeof(*c));
    if (!c)
        return ((void*)0);

    c->apply_map = apply_map;
    if (apply_map)
        c->ch_map_info = &avr->ch_map_info;

    if (avr->dither_method == AV_RESAMPLE_DITHER_TRIANGULAR_NS &&
        sample_rate != 48000 && sample_rate != 44100) {
        av_log(avr, AV_LOG_WARNING, "sample rate must be 48000 or 44100 Hz "
               "for triangular_ns dither. using triangular_hp instead.\n");
        avr->dither_method = AV_RESAMPLE_DITHER_TRIANGULAR_HP;
    }
    c->method = avr->dither_method;
    dither_init(&c->ddsp, c->method);

    if (c->method == AV_RESAMPLE_DITHER_TRIANGULAR_NS) {
        if (sample_rate == 48000) {
            c->ns_coef_b = ns_48_coef_b;
            c->ns_coef_a = ns_48_coef_a;
        } else {
            c->ns_coef_b = ns_44_coef_b;
            c->ns_coef_a = ns_44_coef_a;
        }
    }




    if (out_fmt != AV_SAMPLE_FMT_S16P) {
        c->s16_data = ff_audio_data_alloc(channels, 1024, AV_SAMPLE_FMT_S16P,
                                          "dither s16 buffer");
        if (!c->s16_data)
            goto fail;

        c->ac_out = ff_audio_convert_alloc(avr, out_fmt, AV_SAMPLE_FMT_S16P,
                                           channels, sample_rate, 0);
        if (!c->ac_out)
            goto fail;
    }

    if (in_fmt != AV_SAMPLE_FMT_FLTP || c->apply_map) {
        c->flt_data = ff_audio_data_alloc(channels, 1024, AV_SAMPLE_FMT_FLTP,
                                          "dither flt buffer");
        if (!c->flt_data)
            goto fail;
    }
    if (in_fmt != AV_SAMPLE_FMT_FLTP) {
        c->ac_in = ff_audio_convert_alloc(avr, AV_SAMPLE_FMT_FLTP, in_fmt,
                                          channels, sample_rate, c->apply_map);
        if (!c->ac_in)
            goto fail;
    }

    c->state = av_mallocz(channels * sizeof(*c->state));
    if (!c->state)
        goto fail;
    c->channels = channels;



    c->mute_dither_threshold = lrintf(sample_rate * MUTE_THRESHOLD_SEC);
    c->mute_reset_threshold = c->mute_dither_threshold * 4;


    av_lfg_init(&seed_gen, 0xC0FFEE);
    for (ch = 0; ch < channels; ch++) {
        DitherState *state = &c->state[ch];
        state->mute = c->mute_reset_threshold + 1;
        state->seed = av_lfg_get(&seed_gen);
        generate_dither_noise(c, state, FFMAX(32768, sample_rate / 2));
    }

    return c;

fail:
    ff_dither_free(&c);
    return ((void*)0);
}
