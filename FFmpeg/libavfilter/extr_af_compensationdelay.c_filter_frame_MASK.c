#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
struct TYPE_16__ {int channels; TYPE_5__* dst; } ;
struct TYPE_15__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_14__ {int buf_size; unsigned int delay; double dry; double wet; unsigned int w_ptr; TYPE_1__* delay_frame; } ;
struct TYPE_13__ {scalar_t__* extended_data; } ;
typedef  TYPE_2__ CompensationDelayContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    CompensationDelayContext *s = ctx->priv;
    const unsigned b_mask = s->buf_size - 1;
    const unsigned buf_size = s->buf_size;
    const unsigned delay = s->delay;
    const double dry = s->dry;
    const double wet = s->wet;
    unsigned r_ptr, w_ptr;
    AVFrame *out;
    int n, ch;

    out = FUNC4(ctx->outputs[0], in->nb_samples);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);

    for (ch = 0; ch < inlink->channels; ch++) {
        const double *src = (const double *)in->extended_data[ch];
        double *dst = (double *)out->extended_data[ch];
        double *buffer = (double *)s->delay_frame->extended_data[ch];

        w_ptr =  s->w_ptr;
        r_ptr = (w_ptr + buf_size - delay) & b_mask;

        for (n = 0; n < in->nb_samples; n++) {
            const double sample = src[n];

            buffer[w_ptr] = sample;
            dst[n] = dry * sample + wet * buffer[r_ptr];
            w_ptr = (w_ptr + 1) & b_mask;
            r_ptr = (r_ptr + 1) & b_mask;
        }
    }
    s->w_ptr = w_ptr;

    FUNC2(&in);
    return FUNC3(ctx->outputs[0], out);
}