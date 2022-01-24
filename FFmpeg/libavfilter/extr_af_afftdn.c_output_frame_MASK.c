#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {TYPE_5__* in; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_36__ {TYPE_1__* internal; TYPE_4__* priv; TYPE_6__** outputs; } ;
struct TYPE_35__ {int channels; TYPE_7__* dst; } ;
struct TYPE_34__ {int /*<<< orphan*/  pts; scalar_t__* extended_data; } ;
struct TYPE_33__ {int window_length; scalar_t__ noise_floor; scalar_t__ last_noise_floor; int sample_noise; int sample_advance; int output_mode; int /*<<< orphan*/  pts; int /*<<< orphan*/  fifo; TYPE_3__* dnch; int /*<<< orphan*/  block_count; scalar_t__ sample_noise_end; scalar_t__ sample_noise_start; scalar_t__ track_noise; } ;
struct TYPE_32__ {double* out_samples; } ;
struct TYPE_30__ {int /*<<< orphan*/  (* execute ) (TYPE_7__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ DeNoiseChannel ;
typedef  TYPE_4__ AudioFFTDeNoiseContext ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
#define  IN_MODE 130 
#define  NOISE_MODE 129 
#define  OUT_MODE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__**) ; 
 int FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 TYPE_5__* FUNC7 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  filter_channel ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*,double*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_3__*,double*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (double*,double*,int) ; 
 int /*<<< orphan*/  FUNC12 (double*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_3__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_3__*,double*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioFFTDeNoiseContext *s = ctx->priv;
    AVFrame *out = NULL, *in = NULL;
    ThreadData td;
    int ret = 0;

    in = FUNC7(outlink, s->window_length);
    if (!in)
        return FUNC0(ENOMEM);

    ret = FUNC3(s->fifo, (void **)in->extended_data, s->window_length);
    if (ret < 0)
        goto end;

    if (s->track_noise) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];
            double levels[15];

            FUNC9(s, dnch, levels);
            FUNC15(s, dnch, levels, 0);
        }

        if (s->noise_floor != s->last_noise_floor)
            FUNC16(s);
    }

    if (s->sample_noise_start) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];

            FUNC10(dnch);
        }
        s->sample_noise_start = 0;
        s->sample_noise = 1;
    }

    if (s->sample_noise) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];

            FUNC13(s, dnch, in, ch);
        }
    }

    if (s->sample_noise_end) {
        for (int ch = 0; ch < inlink->channels; ch++) {
            DeNoiseChannel *dnch = &s->dnch[ch];
            double sample_noise[15];

            FUNC8(s, dnch, sample_noise);
            FUNC15(s, dnch, sample_noise, 1);
            FUNC14(s, dnch);
        }
        s->sample_noise = 0;
        s->sample_noise_end = 0;
    }

    s->block_count++;
    td.in = in;
    ctx->internal->execute(ctx, filter_channel, &td, NULL,
                           FUNC1(outlink->channels, FUNC6(ctx)));

    out = FUNC7(outlink, s->sample_advance);
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    for (int ch = 0; ch < inlink->channels; ch++) {
        DeNoiseChannel *dnch = &s->dnch[ch];
        double *src = dnch->out_samples;
        float *orig = (float *)in->extended_data[ch];
        float *dst = (float *)out->extended_data[ch];

        switch (s->output_mode) {
        case IN_MODE:
            for (int m = 0; m < s->sample_advance; m++)
                dst[m] = orig[m];
            break;
        case OUT_MODE:
            for (int m = 0; m < s->sample_advance; m++)
                dst[m] = src[m];
            break;
        case NOISE_MODE:
            for (int m = 0; m < s->sample_advance; m++)
                dst[m] = orig[m] - src[m];
            break;
        default:
            FUNC4(&out);
            ret = AVERROR_BUG;
            goto end;
        }
        FUNC11(src, src + s->sample_advance, (s->window_length - s->sample_advance) * sizeof(*src));
        FUNC12(src + (s->window_length - s->sample_advance), 0, s->sample_advance * sizeof(*src));
    }

    FUNC2(s->fifo, s->sample_advance);

    out->pts = s->pts;
    ret = FUNC5(outlink, out);
    if (ret < 0)
        goto end;
    s->pts += s->sample_advance;
end:
    FUNC4(&in);

    return ret;
}