#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_21__ {TYPE_3__** outputs; TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_20__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_19__ {scalar_t__ pts; } ;
struct TYPE_18__ {scalar_t__ pts; } ;
typedef  TYPE_1__ GraphMonitorContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,scalar_t__) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__**) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    GraphMonitorContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    int64_t pts = AV_NOPTS_VALUE;

    FUNC1(outlink, inlink);

    if (FUNC7(inlink)) {
        AVFrame *frame = NULL;
        int ret;

        ret = FUNC6(inlink, &frame);
        if (ret < 0)
            return ret;
        if (ret > 0) {
            pts = frame->pts;
            FUNC3(&frame);
        }
    }

    if (pts != AV_NOPTS_VALUE) {
        pts = FUNC4(pts, inlink->time_base, outlink->time_base);
        if (s->pts < pts && FUNC8(outlink))
            return FUNC5(ctx, pts);
    }

    FUNC0(inlink, outlink);
    FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}