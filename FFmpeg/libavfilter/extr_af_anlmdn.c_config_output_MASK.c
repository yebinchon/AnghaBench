#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ extended_data; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  format; int /*<<< orphan*/  sample_rate; TYPE_3__* src; } ;
struct TYPE_8__ {int K; int S; int eof_left; int H; int N; float pdiff_lut_scale; float m; int /*<<< orphan*/  dsp; int /*<<< orphan*/ * weight_lut; TYPE_7__* in; int /*<<< orphan*/  fifo; TYPE_7__* cache; int /*<<< orphan*/  pts; int /*<<< orphan*/  rd; int /*<<< orphan*/  pd; } ;
typedef  TYPE_1__ AudioNLMeansContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 float WEIGHT_LUT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioNLMeansContext *s = ctx->priv;
    int ret;

    s->K = FUNC5(s->pd, outlink->sample_rate, AV_TIME_BASE);
    s->S = FUNC5(s->rd, outlink->sample_rate, AV_TIME_BASE);

    s->eof_left = -1;
    s->pts = AV_NOPTS_VALUE;
    s->H = s->K * 2 + 1;
    s->N = s->H + (s->K + s->S) * 2;

    FUNC4(ctx, AV_LOG_DEBUG, "K:%d S:%d H:%d N:%d\n", s->K, s->S, s->H, s->N);

    FUNC3(&s->in);
    FUNC3(&s->cache);
    s->in = FUNC8(outlink, s->N);
    if (!s->in)
        return FUNC0(ENOMEM);

    s->cache = FUNC8(outlink, s->S * 2);
    if (!s->cache)
        return FUNC0(ENOMEM);

    s->fifo = FUNC1(outlink->format, outlink->channels, s->N);
    if (!s->fifo)
        return FUNC0(ENOMEM);

    ret = FUNC2(s->fifo, (void **)s->in->extended_data, s->K + s->S);
    if (ret < 0)
        return ret;

    s->pdiff_lut_scale = 1.f / s->m * WEIGHT_LUT_SIZE;
    for (int i = 0; i < WEIGHT_LUT_SIZE; i++) {
        float w = -i / s->pdiff_lut_scale;

        s->weight_lut[i] = FUNC6(w);
    }

    FUNC7(&s->dsp);

    return 0;
}