#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_13__ {scalar_t__ dither_method; int /*<<< orphan*/  ch_map_info; } ;
struct TYPE_12__ {int apply_map; scalar_t__ method; int channels; int mute_dither_threshold; int mute_reset_threshold; TYPE_1__* state; void* ac_in; void* flt_data; void* ac_out; void* s16_data; int /*<<< orphan*/  ns_coef_a; int /*<<< orphan*/  ns_coef_b; int /*<<< orphan*/  ddsp; int /*<<< orphan*/ * ch_map_info; } ;
struct TYPE_11__ {int mute; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ DitherState ;
typedef  TYPE_2__ DitherContext ;
typedef  int /*<<< orphan*/  AVLFG ;
typedef  TYPE_3__ AVAudioResampleContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_RESAMPLE_DITHER_TRIANGULAR_HP ; 
 scalar_t__ AV_RESAMPLE_DITHER_TRIANGULAR_NS ; 
 int AV_SAMPLE_FMT_FLTP ; 
 scalar_t__ AV_SAMPLE_FMT_S16 ; 
 int AV_SAMPLE_FMT_S16P ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MUTE_THRESHOLD_SEC ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC9 (TYPE_3__*,int,int,int,int,int) ; 
 void* FUNC10 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  ns_44_coef_a ; 
 int /*<<< orphan*/  ns_44_coef_b ; 
 int /*<<< orphan*/  ns_48_coef_a ; 
 int /*<<< orphan*/  ns_48_coef_b ; 

DitherContext *FUNC14(AVAudioResampleContext *avr,
                               enum AVSampleFormat out_fmt,
                               enum AVSampleFormat in_fmt,
                               int channels, int sample_rate, int apply_map)
{
    AVLFG seed_gen;
    DitherContext *c;
    int ch;

    if (FUNC2(out_fmt) != AV_SAMPLE_FMT_S16 ||
        FUNC1(in_fmt) <= 2) {
        FUNC6(avr, AV_LOG_ERROR, "dithering %s to %s is not supported\n",
               FUNC3(in_fmt), FUNC3(out_fmt));
        return NULL;
    }

    c = FUNC7(sizeof(*c));
    if (!c)
        return NULL;

    c->apply_map = apply_map;
    if (apply_map)
        c->ch_map_info = &avr->ch_map_info;

    if (avr->dither_method == AV_RESAMPLE_DITHER_TRIANGULAR_NS &&
        sample_rate != 48000 && sample_rate != 44100) {
        FUNC6(avr, AV_LOG_WARNING, "sample rate must be 48000 or 44100 Hz "
               "for triangular_ns dither. using triangular_hp instead.\n");
        avr->dither_method = AV_RESAMPLE_DITHER_TRIANGULAR_HP;
    }
    c->method = avr->dither_method;
    FUNC8(&c->ddsp, c->method);

    if (c->method == AV_RESAMPLE_DITHER_TRIANGULAR_NS) {
        if (sample_rate == 48000) {
            c->ns_coef_b = ns_48_coef_b;
            c->ns_coef_a = ns_48_coef_a;
        } else {
            c->ns_coef_b = ns_44_coef_b;
            c->ns_coef_a = ns_44_coef_a;
        }
    }

    /* Either s16 or s16p output format is allowed, but s16p is used
       internally, so we need to use a temp buffer and interleave if the output
       format is s16 */
    if (out_fmt != AV_SAMPLE_FMT_S16P) {
        c->s16_data = FUNC10(channels, 1024, AV_SAMPLE_FMT_S16P,
                                          "dither s16 buffer");
        if (!c->s16_data)
            goto fail;

        c->ac_out = FUNC9(avr, out_fmt, AV_SAMPLE_FMT_S16P,
                                           channels, sample_rate, 0);
        if (!c->ac_out)
            goto fail;
    }

    if (in_fmt != AV_SAMPLE_FMT_FLTP || c->apply_map) {
        c->flt_data = FUNC10(channels, 1024, AV_SAMPLE_FMT_FLTP,
                                          "dither flt buffer");
        if (!c->flt_data)
            goto fail;
    }
    if (in_fmt != AV_SAMPLE_FMT_FLTP) {
        c->ac_in = FUNC9(avr, AV_SAMPLE_FMT_FLTP, in_fmt,
                                          channels, sample_rate, c->apply_map);
        if (!c->ac_in)
            goto fail;
    }

    c->state = FUNC7(channels * sizeof(*c->state));
    if (!c->state)
        goto fail;
    c->channels = channels;

    /* calculate thresholds for turning off dithering during periods of
       silence to avoid replacing digital silence with quiet dither noise */
    c->mute_dither_threshold = FUNC13(sample_rate * MUTE_THRESHOLD_SEC);
    c->mute_reset_threshold  = c->mute_dither_threshold * 4;

    /* initialize dither states */
    FUNC5(&seed_gen, 0xC0FFEE);
    for (ch = 0; ch < channels; ch++) {
        DitherState *state = &c->state[ch];
        state->mute = c->mute_reset_threshold + 1;
        state->seed = FUNC4(&seed_gen);
        FUNC12(c, state, FUNC0(32768, sample_rate / 2));
    }

    return c;

fail:
    FUNC11(&c);
    return NULL;
}