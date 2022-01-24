#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  is_disabled; TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_3__* dst; } ;
struct TYPE_9__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  is_enabled; int /*<<< orphan*/ * gain_history_smoothed; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    DynamicAudioNormalizerContext *s = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int ret = 1;

    if (!FUNC4(s->gain_history_smoothed[0])) {
        double is_enabled;
        AVFrame *out = FUNC7(&s->queue);

        FUNC3(s->is_enabled, &is_enabled);

        FUNC0(s, out, is_enabled > 0.);
        ret = FUNC8(outlink, out);
    }

    FUNC2(in);
    FUNC5(s->is_enabled, !ctx->is_disabled);
    FUNC1(s, in);
    FUNC6(ctx, &s->queue, in);

    return ret;
}