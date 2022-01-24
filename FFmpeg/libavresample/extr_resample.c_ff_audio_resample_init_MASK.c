#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_16__ {int nb_samples; } ;
struct TYPE_15__ {int out_sample_rate; int in_sample_rate; int cutoff; int phase_shift; int internal_sample_fmt; double filter_size; int /*<<< orphan*/  resample_channels; int /*<<< orphan*/  kaiser_beta; int /*<<< orphan*/  filter_type; int /*<<< orphan*/  linear_interp; } ;
struct TYPE_14__ {int phase_shift; int phase_mask; int filter_length; int padding_size; int initial_padding_samples; struct TYPE_14__* filter_bank; TYPE_9__* buffer; scalar_t__ frac; scalar_t__ index; scalar_t__ initial_padding_filled; int /*<<< orphan*/  dst_incr; int /*<<< orphan*/  ideal_dst_incr; int /*<<< orphan*/  src_incr; scalar_t__ compensation_distance; int /*<<< orphan*/  set_filter; int /*<<< orphan*/  resample_nearest; int /*<<< orphan*/  linear; int /*<<< orphan*/  resample_one; int /*<<< orphan*/  kaiser_beta; int /*<<< orphan*/  filter_type; TYPE_2__* avr; } ;
typedef  TYPE_1__ ResampleContext ;
typedef  TYPE_2__ AVAudioResampleContext ;

/* Variables and functions */
 scalar_t__ ARCH_AARCH64 ; 
 scalar_t__ ARCH_ARM ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  AV_SAMPLE_FMT_DBLP 131 
#define  AV_SAMPLE_FMT_FLTP 130 
#define  AV_SAMPLE_FMT_S16P 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int FUNC0 (int,int) ; 
 double FUNC1 (int,double) ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,double) ; 
 scalar_t__ FUNC9 (double) ; 
 TYPE_9__* FUNC10 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  resample_linear_dbl ; 
 int /*<<< orphan*/  resample_linear_flt ; 
 int /*<<< orphan*/  resample_linear_s16 ; 
 int /*<<< orphan*/  resample_linear_s32 ; 
 int /*<<< orphan*/  resample_nearest_dbl ; 
 int /*<<< orphan*/  resample_nearest_flt ; 
 int /*<<< orphan*/  resample_nearest_s16 ; 
 int /*<<< orphan*/  resample_nearest_s32 ; 
 int /*<<< orphan*/  resample_one_dbl ; 
 int /*<<< orphan*/  resample_one_flt ; 
 int /*<<< orphan*/  resample_one_s16 ; 
 int /*<<< orphan*/  resample_one_s32 ; 
 int /*<<< orphan*/  set_filter_dbl ; 
 int /*<<< orphan*/  set_filter_flt ; 
 int /*<<< orphan*/  set_filter_s16 ; 
 int /*<<< orphan*/  set_filter_s32 ; 

ResampleContext *FUNC15(AVAudioResampleContext *avr)
{
    ResampleContext *c;
    int out_rate    = avr->out_sample_rate;
    int in_rate     = avr->in_sample_rate;
    double factor   = FUNC1(out_rate * avr->cutoff / in_rate, 1.0);
    int phase_count = 1 << avr->phase_shift;
    int felem_size;

    if (avr->internal_sample_fmt != AV_SAMPLE_FMT_S16P &&
        avr->internal_sample_fmt != AV_SAMPLE_FMT_S32P &&
        avr->internal_sample_fmt != AV_SAMPLE_FMT_FLTP &&
        avr->internal_sample_fmt != AV_SAMPLE_FMT_DBLP) {
        FUNC5(avr, AV_LOG_ERROR, "Unsupported internal format for "
               "resampling: %s\n",
               FUNC4(avr->internal_sample_fmt));
        return NULL;
    }
    c = FUNC6(sizeof(*c));
    if (!c)
        return NULL;

    c->avr           = avr;
    c->phase_shift   = avr->phase_shift;
    c->phase_mask    = phase_count - 1;
    c->linear        = avr->linear_interp;
    c->filter_length = FUNC0((int)FUNC9(avr->filter_size / factor), 1);
    c->filter_type   = avr->filter_type;
    c->kaiser_beta   = avr->kaiser_beta;

    switch (avr->internal_sample_fmt) {
    case AV_SAMPLE_FMT_DBLP:
        c->resample_one  = c->linear ? resample_linear_dbl : resample_one_dbl;
        c->resample_nearest = resample_nearest_dbl;
        c->set_filter    = set_filter_dbl;
        break;
    case AV_SAMPLE_FMT_FLTP:
        c->resample_one  = c->linear ? resample_linear_flt : resample_one_flt;
        c->resample_nearest = resample_nearest_flt;
        c->set_filter    = set_filter_flt;
        break;
    case AV_SAMPLE_FMT_S32P:
        c->resample_one  = c->linear ? resample_linear_s32 : resample_one_s32;
        c->resample_nearest = resample_nearest_s32;
        c->set_filter    = set_filter_s32;
        break;
    case AV_SAMPLE_FMT_S16P:
        c->resample_one  = c->linear ? resample_linear_s16 : resample_one_s16;
        c->resample_nearest = resample_nearest_s16;
        c->set_filter    = set_filter_s16;
        break;
    }

    if (ARCH_AARCH64)
        FUNC12(c, avr->internal_sample_fmt);
    if (ARCH_ARM)
        FUNC13(c, avr->internal_sample_fmt);

    felem_size = FUNC3(avr->internal_sample_fmt);
    c->filter_bank = FUNC6(c->filter_length * (phase_count + 1) * felem_size);
    if (!c->filter_bank)
        goto error;

    if (FUNC8(c, factor) < 0)
        goto error;

    FUNC14(&c->filter_bank[(c->filter_length * phase_count + 1) * felem_size],
           c->filter_bank, (c->filter_length - 1) * felem_size);
    FUNC14(&c->filter_bank[c->filter_length * phase_count * felem_size],
           &c->filter_bank[(c->filter_length - 1) * felem_size], felem_size);

    c->compensation_distance = 0;
    if (!FUNC7(&c->src_incr, &c->dst_incr, out_rate,
                   in_rate * (int64_t)phase_count, INT32_MAX / 2))
        goto error;
    c->ideal_dst_incr = c->dst_incr;

    c->padding_size   = (c->filter_length - 1) / 2;
    c->initial_padding_filled = 0;
    c->index = 0;
    c->frac  = 0;

    /* allocate internal buffer */
    c->buffer = FUNC10(avr->resample_channels, c->padding_size,
                                    avr->internal_sample_fmt,
                                    "resample buffer");
    if (!c->buffer)
        goto error;
    c->buffer->nb_samples      = c->padding_size;
    c->initial_padding_samples = c->padding_size;

    FUNC5(avr, AV_LOG_DEBUG, "resample: %s from %d Hz to %d Hz\n",
           FUNC4(avr->internal_sample_fmt),
           avr->in_sample_rate, avr->out_sample_rate);

    return c;

error:
    FUNC11(&c->buffer);
    FUNC2(c->filter_bank);
    FUNC2(c);
    return NULL;
}