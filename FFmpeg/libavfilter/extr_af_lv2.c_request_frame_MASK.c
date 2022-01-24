#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_16__ {int /*<<< orphan*/ * inputs; scalar_t__ nb_inputs; TYPE_1__* priv; } ;
struct TYPE_15__ {TYPE_4__* src; } ;
struct TYPE_14__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  nb_samples; } ;
struct TYPE_13__ {scalar_t__ duration; scalar_t__ nb_samples; int /*<<< orphan*/  pts; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  instance; } ;
typedef  TYPE_1__ LV2Context ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_TIME_BASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LV2Context *s = ctx->priv;
    AVFrame *out;
    int64_t t;

    if (ctx->nb_inputs)
        return FUNC5(ctx->inputs[0]);

    t = FUNC1(s->pts, AV_TIME_BASE, s->sample_rate);
    if (s->duration >= 0 && t >= s->duration)
        return AVERROR_EOF;

    out = FUNC4(outlink, s->nb_samples);
    if (!out)
        return FUNC0(ENOMEM);

    FUNC2(s, out, out);

    FUNC6(s->instance, out->nb_samples);

    out->sample_rate = s->sample_rate;
    out->pts         = s->pts;
    s->pts          += s->nb_samples;

    return FUNC3(outlink, out);
}