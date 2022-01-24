#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * inputs; int /*<<< orphan*/ ** outputs; TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/ * alpha_frame; int /*<<< orphan*/ * main_frame; } ;
typedef  TYPE_1__ AlphaMergeContext ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    AVFilterLink *outlink = ctx->outputs[0];
    AlphaMergeContext *s = ctx->priv;
    int ret;

    FUNC1(outlink, ctx);

    if (!s->main_frame) {
        ret = FUNC5(ctx->inputs[0], &s->main_frame);
        if (ret < 0)
            return ret;
    }

    if (!s->alpha_frame) {
        ret = FUNC5(ctx->inputs[1], &s->alpha_frame);
        if (ret < 0)
            return ret;
    }

    if (s->main_frame && s->alpha_frame) {
        FUNC3(ctx, s->main_frame, s->alpha_frame);
        ret = FUNC4(outlink, s->main_frame);
        FUNC2(&s->alpha_frame);
        s->main_frame = NULL;
        return ret;
    }

    FUNC0(ctx->inputs[0], outlink);
    FUNC0(ctx->inputs[1], outlink);

    if (FUNC7(ctx->outputs[0]) &&
        !FUNC8(ctx->inputs[0]) &&
        !s->main_frame) {
        FUNC6(ctx->inputs[0]);
        return 0;
    }

    if (FUNC7(ctx->outputs[0]) &&
        !FUNC8(ctx->inputs[1]) &&
        !s->alpha_frame) {
        FUNC6(ctx->inputs[1]);
        return 0;
    }

    return FFERROR_NOT_READY;
}