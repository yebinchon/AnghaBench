#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
typedef  int int16_t ;
struct TYPE_19__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {int format; TYPE_4__* dst; } ;
struct TYPE_17__ {int nb_samples; int format; int channels; scalar_t__* data; scalar_t__* extended_data; } ;
struct TYPE_16__ {int bits_per_sample; int sample_count; int /*<<< orphan*/  detect; int /*<<< orphan*/ * state; scalar_t__ process_stereo; } ;
typedef  TYPE_1__ HDCDContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_SAMPLE_FMT_S16 131 
#define  AV_SAMPLE_FMT_S16P 130 
#define  AV_SAMPLE_FMT_S32 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int*,int) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    HDCDContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    const int16_t *in_data;
    const int32_t *in_data32;
    int32_t *out_data;
    int n, c, result;
    int a = 32 - s->bits_per_sample;

    out = FUNC4(outlink, in->nb_samples);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    result = FUNC1(out, in);
    if (result) {
        FUNC2(&out);
        FUNC2(&in);
        return result;
    }
    out->format = outlink->format; // is this needed?

    out_data = (int32_t*)out->data[0];
    switch (inlink->format) {
        case AV_SAMPLE_FMT_S16P:
            for (n = 0; n < in->nb_samples; n++)
                for (c = 0; c < in->channels; c++) {
                    in_data = (int16_t*)in->extended_data[c];
                    out_data[(n * in->channels) + c] = in_data[n];
                }
            break;
        case AV_SAMPLE_FMT_S16:
            in_data  = (int16_t*)in->data[0];
            for (n = 0; n < in->nb_samples * in->channels; n++)
                out_data[n] = in_data[n];
            break;

        case AV_SAMPLE_FMT_S32P:
            for (n = 0; n < in->nb_samples; n++)
                for (c = 0; c < in->channels; c++) {
                    in_data32 = (int32_t*)in->extended_data[c];
                    out_data[(n * in->channels) + c] = in_data32[n] >> a;
                }
            break;
        case AV_SAMPLE_FMT_S32:
            in_data32  = (int32_t*)in->data[0];
            for (n = 0; n < in->nb_samples * in->channels; n++)
                out_data[n] = in_data32[n] >> a;
            break;
    }

    if (s->process_stereo) {
        FUNC7(&s->detect);
        FUNC9(s, out_data, in->nb_samples);
        FUNC6(&s->state[0], &s->detect);
        FUNC6(&s->state[1], &s->detect);
        FUNC5(&s->detect, 2);
    } else {
        FUNC7(&s->detect);
        for (c = 0; c < in->channels; c++) {
            FUNC8(s, &s->state[c], out_data + c, in->nb_samples, in->channels);
            FUNC6(&s->state[c], &s->detect);
        }
        FUNC5(&s->detect, in->channels);
    }

    s->sample_count += in->nb_samples * in->channels;

    FUNC2(&in);
    return FUNC3(outlink, out);
}