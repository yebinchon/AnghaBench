#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* internal; TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_20__ {TYPE_5__* dst; } ;
struct TYPE_19__ {int /*<<< orphan*/  pts; } ;
struct TYPE_18__ {int /*<<< orphan*/ * height; int /*<<< orphan*/  maskfun; int /*<<< orphan*/  empty; scalar_t__ (* getsum ) (TYPE_5__*,TYPE_3__*) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ MaskFunContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    MaskFunContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];

    if (s->getsum(ctx, frame)) {
        AVFrame *out = FUNC2(s->empty);

        if (!out) {
            FUNC3(&frame);
            return FUNC0(ENOMEM);
        }
        out->pts = frame->pts;
        FUNC3(&frame);

        return FUNC4(outlink, out);
    }

    ctx->internal->execute(ctx, s->maskfun, frame, NULL,
                           FUNC1(s->height[1], FUNC5(ctx)));

    return FUNC4(outlink, frame);
}