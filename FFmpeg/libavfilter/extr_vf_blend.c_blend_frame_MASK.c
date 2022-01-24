#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int w; int h; int plane; TYPE_5__* inlink; int /*<<< orphan*/ * param; TYPE_4__* dst; TYPE_4__ const* bottom; TYPE_4__* top; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_5__** inputs; TYPE_3__* priv; } ;
struct TYPE_23__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_22__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_21__ {int nb_planes; int hsub; int vsub; int /*<<< orphan*/  tblend; int /*<<< orphan*/ * params; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  FilterParams ;
typedef  TYPE_3__ BlendContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 TYPE_4__* FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_slice ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AVFrame *FUNC7(AVFilterContext *ctx, AVFrame *top_buf,
                            const AVFrame *bottom_buf)
{
    BlendContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *dst_buf;
    int plane;

    dst_buf = FUNC5(outlink, outlink->w, outlink->h);
    if (!dst_buf)
        return top_buf;
    FUNC2(dst_buf, top_buf);

    for (plane = 0; plane < s->nb_planes; plane++) {
        int hsub = plane == 1 || plane == 2 ? s->hsub : 0;
        int vsub = plane == 1 || plane == 2 ? s->vsub : 0;
        int outw = FUNC0(dst_buf->width,  hsub);
        int outh = FUNC0(dst_buf->height, vsub);
        FilterParams *param = &s->params[plane];
        ThreadData td = { .top = top_buf, .bottom = bottom_buf, .dst = dst_buf,
                          .w = outw, .h = outh, .param = param, .plane = plane,
                          .inlink = inlink };

        ctx->internal->execute(ctx, filter_slice, &td, NULL, FUNC1(outh, FUNC4(ctx)));
    }

    if (!s->tblend)
        FUNC3(&top_buf);

    return dst_buf;
}