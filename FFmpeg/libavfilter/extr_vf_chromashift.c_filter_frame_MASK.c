#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_1__* internal; TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_21__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_20__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {TYPE_3__* in; int /*<<< orphan*/ * height; int /*<<< orphan*/  filter_slice; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  is_rgbashift; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ ChromaShiftContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ChromaShiftContext *s = ctx->priv;
    AVFrame *out;

    out = FUNC7(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }
    FUNC2(out, in);

    s->in = in;
    if (!s->is_rgbashift) {
        FUNC4(out->data[0],
                            out->linesize[0],
                            in->data[0], in->linesize[0],
                            s->linesize[0], s->height[0]);
    }
    ctx->internal->execute(ctx, s->filter_slice, out, NULL,
                           FUNC1(s->height[1],
                                  s->height[2],
                                  FUNC6(ctx)));
    s->in = NULL;
    FUNC3(&in);
    return FUNC5(outlink, out);
}