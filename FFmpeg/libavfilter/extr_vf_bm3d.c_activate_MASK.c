#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/ * inputs; int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ BM3DContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx)
{
    BM3DContext *s = ctx->priv;

    if (!s->ref) {
        AVFrame *frame = NULL;
        AVFrame *out = NULL;
        int ret, status;
        int64_t pts;

        FUNC0(ctx->outputs[0], ctx->inputs[0]);

        if ((ret = FUNC5(ctx->inputs[0], &frame)) > 0) {
            ret = FUNC9(ctx, &out, frame, frame);
            FUNC1(&frame);
            if (ret < 0)
                return ret;
            ret = FUNC2(ctx->outputs[0], out);
        }
        if (ret < 0) {
            return ret;
        } else if (FUNC4(ctx->inputs[0], &status, &pts)) {
            FUNC8(ctx->outputs[0], status, pts);
            return 0;
        } else {
            if (FUNC7(ctx->outputs[0]))
                FUNC6(ctx->inputs[0]);
            return 0;
        }
    } else {
        return FUNC3(&s->fs);
    }
}