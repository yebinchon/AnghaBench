#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int nb_samples; int channels; int /*<<< orphan*/  allocated_samples; scalar_t__* data; scalar_t__ allow_realloc; int /*<<< orphan*/  read_only; } ;
struct TYPE_13__ {scalar_t__ compensation_distance; int filter_length; scalar_t__ phase_shift; int final_padding_samples; int initial_padding_filled; int padding_size; int final_padding_filled; int initial_padding_samples; TYPE_2__* buffer; TYPE_11__* avr; } ;
struct TYPE_12__ {int /*<<< orphan*/  internal_sample_fmt; } ;
typedef  TYPE_1__ ResampleContext ;
typedef  TYPE_2__ AudioData ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_2__*,int,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_1__*,void*,void const*,int*,int,int /*<<< orphan*/ ,int,int) ; 

int FUNC10(ResampleContext *c, AudioData *dst, AudioData *src)
{
    int ch, in_samples, in_leftover, consumed = 0, out_samples = 0;
    int ret = FUNC0(EINVAL);
    int nearest_neighbour = (c->compensation_distance == 0 &&
                             c->filter_length == 1 &&
                             c->phase_shift == 0);

    in_samples  = src ? src->nb_samples : 0;
    in_leftover = c->buffer->nb_samples;

    /* add input samples to the internal buffer */
    if (src) {
        ret = FUNC4(c->buffer, in_leftover, src, 0, in_samples);
        if (ret < 0)
            return ret;
    } else if (in_leftover <= c->final_padding_samples) {
        /* no remaining samples to flush */
        return 0;
    }

    if (!c->initial_padding_filled) {
        int bps = FUNC2(c->avr->internal_sample_fmt);
        int i;

        if (src && c->buffer->nb_samples < 2 * c->padding_size)
            return 0;

        for (i = 0; i < c->padding_size; i++)
            for (ch = 0; ch < c->buffer->channels; ch++) {
                if (c->buffer->nb_samples > 2 * c->padding_size - i) {
                    FUNC7(c->buffer->data[ch] + bps * i,
                           c->buffer->data[ch] + bps * (2 * c->padding_size - i), bps);
                } else {
                    FUNC8(c->buffer->data[ch] + bps * i, 0, bps);
                }
            }
        c->initial_padding_filled = 1;
    }

    if (!src && !c->final_padding_filled) {
        int bps = FUNC2(c->avr->internal_sample_fmt);
        int i;

        ret = FUNC6(c->buffer,
                                    FUNC1(in_samples, in_leftover) +
                                    c->padding_size);
        if (ret < 0) {
            FUNC3(c->avr, AV_LOG_ERROR, "Error reallocating resampling buffer\n");
            return FUNC0(ENOMEM);
        }

        for (i = 0; i < c->padding_size; i++)
            for (ch = 0; ch < c->buffer->channels; ch++) {
                if (in_leftover > i) {
                    FUNC7(c->buffer->data[ch] + bps * (in_leftover + i),
                           c->buffer->data[ch] + bps * (in_leftover - i - 1),
                           bps);
                } else {
                    FUNC8(c->buffer->data[ch] + bps * (in_leftover + i),
                           0, bps);
                }
            }
        c->buffer->nb_samples   += c->padding_size;
        c->final_padding_samples = c->padding_size;
        c->final_padding_filled  = 1;
    }


    /* calculate output size and reallocate output buffer if needed */
    /* TODO: try to calculate this without the dummy resample() run */
    if (!dst->read_only && dst->allow_realloc) {
        out_samples = FUNC9(c, NULL, NULL, NULL, c->buffer->nb_samples,
                               INT_MAX, 0, nearest_neighbour);
        ret = FUNC6(dst, out_samples);
        if (ret < 0) {
            FUNC3(c->avr, AV_LOG_ERROR, "error reallocating output\n");
            return ret;
        }
    }

    /* resample each channel plane */
    for (ch = 0; ch < c->buffer->channels; ch++) {
        out_samples = FUNC9(c, (void *)dst->data[ch],
                               (const void *)c->buffer->data[ch], &consumed,
                               c->buffer->nb_samples, dst->allocated_samples,
                               ch + 1 == c->buffer->channels, nearest_neighbour);
    }
    if (out_samples < 0) {
        FUNC3(c->avr, AV_LOG_ERROR, "error during resampling\n");
        return out_samples;
    }

    /* drain consumed samples from the internal buffer */
    FUNC5(c->buffer, consumed);
    c->initial_padding_samples = FUNC1(c->initial_padding_samples - consumed, 0);

    FUNC3(c->avr, AV_LOG_TRACE, "resampled %d in + %d leftover to %d out + %d leftover\n",
            in_samples, in_leftover, out_samples, c->buffer->nb_samples);

    dst->nb_samples = out_samples;
    return 0;
}