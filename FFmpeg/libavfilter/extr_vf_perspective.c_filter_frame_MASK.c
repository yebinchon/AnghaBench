#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int hsub; int vsub; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  src_linesize; int /*<<< orphan*/  src; int /*<<< orphan*/  dst_linesize; int /*<<< orphan*/  dst; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_26__ {TYPE_1__* internal; TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_25__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_6__* dst; } ;
struct TYPE_24__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_23__ {scalar_t__ eval_mode; int nb_planes; int hsub; int vsub; int /*<<< orphan*/  perspective; int /*<<< orphan*/ * height; int /*<<< orphan*/ * linesize; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ PerspectiveContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EVAL_MODE_FRAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**) ; 
 int FUNC4 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    PerspectiveContext *s = ctx->priv;
    AVFrame *out;
    int plane;
    int ret;

    out = FUNC7(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&frame);
        return FUNC0(ENOMEM);
    }
    FUNC2(out, frame);

    if (s->eval_mode == EVAL_MODE_FRAME) {
        if ((ret = FUNC4(ctx, inlink)) < 0) {
            FUNC3(&out);
            return ret;
        }
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        int hsub = plane == 1 || plane == 2 ? s->hsub : 0;
        int vsub = plane == 1 || plane == 2 ? s->vsub : 0;
        ThreadData td = {.dst = out->data[plane],
                         .dst_linesize = out->linesize[plane],
                         .src = frame->data[plane],
                         .src_linesize = frame->linesize[plane],
                         .w = s->linesize[plane],
                         .h = s->height[plane],
                         .hsub = hsub,
                         .vsub = vsub };
        ctx->internal->execute(ctx, s->perspective, &td, NULL, FUNC1(td.h, FUNC6(ctx)));
    }

    FUNC3(&frame);
    return FUNC5(outlink, out);
}