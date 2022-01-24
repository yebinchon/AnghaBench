#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_13__ {int channels; int /*<<< orphan*/  time_base; int /*<<< orphan*/  sample_rate; TYPE_4__* dst; } ;
struct TYPE_12__ {int nb_samples; scalar_t__ pts; scalar_t__* extended_data; } ;
struct TYPE_11__ {int rdft_len; scalar_t__ next_pts; int fir_len; int /*<<< orphan*/  frame_nsamples_max; int /*<<< orphan*/  min_phase; scalar_t__ zero_phase; scalar_t__ conv_idx; scalar_t__ conv_buf; scalar_t__ multi; scalar_t__ kernel_buf; scalar_t__ fft_ctx; } ;
typedef  TYPE_1__ FIREqualizerContext ;
typedef  int /*<<< orphan*/  FFTComplex ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,float*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,float*,float*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,float*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    FIREqualizerContext *s = ctx->priv;
    int ch;

    if (!s->min_phase) {
        for (ch = 0; ch + 1 < inlink->channels && s->fft_ctx; ch += 2) {
            FUNC4(s, s->kernel_buf, (FFTComplex *)(s->conv_buf + 2 * ch * s->rdft_len),
                            s->conv_idx + ch, (float *) frame->extended_data[ch],
                            (float *) frame->extended_data[ch+1], frame->nb_samples);
        }

        for ( ; ch < inlink->channels; ch++) {
            FUNC3(s, s->kernel_buf + (s->multi ? ch * s->rdft_len : 0),
                        s->conv_buf + 2 * ch * s->rdft_len, s->conv_idx + ch,
                        (float *) frame->extended_data[ch], frame->nb_samples);
        }
    } else {
        for (ch = 0; ch < inlink->channels; ch++) {
            FUNC5(s, s->kernel_buf + (s->multi ? ch * s->rdft_len : 0),
                                     s->conv_buf + 2 * ch * s->rdft_len, s->conv_idx + ch,
                                     (float *) frame->extended_data[ch], frame->nb_samples);
        }
    }

    s->next_pts = AV_NOPTS_VALUE;
    if (frame->pts != AV_NOPTS_VALUE) {
        s->next_pts = frame->pts + FUNC2(frame->nb_samples, FUNC1(1, inlink->sample_rate), inlink->time_base);
        if (s->zero_phase && !s->min_phase)
            frame->pts -= FUNC2(s->fir_len/2, FUNC1(1, inlink->sample_rate), inlink->time_base);
    }
    s->frame_nsamples_max = FUNC0(s->frame_nsamples_max, frame->nb_samples);
    return FUNC6(ctx->outputs[0], frame);
}