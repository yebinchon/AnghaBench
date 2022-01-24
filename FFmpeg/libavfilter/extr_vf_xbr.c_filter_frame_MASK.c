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
struct TYPE_20__ {int /*<<< orphan*/  func; int /*<<< orphan*/  rgbtoyuv; } ;
typedef  TYPE_2__ XBRContext ;
struct TYPE_21__ {int /*<<< orphan*/  rgbtoyuv; TYPE_4__* out; TYPE_4__* in; } ;
typedef  TYPE_3__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_2__* priv; TYPE_5__** outputs; } ;
struct TYPE_23__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_6__* dst; } ;
struct TYPE_22__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**) ; 
 int FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 TYPE_4__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    XBRContext *s = ctx->priv;
    ThreadData td;

    AVFrame *out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }

    FUNC2(out, in);

    td.in = in;
    td.out = out;
    td.rgbtoyuv = s->rgbtoyuv;
    ctx->internal->execute(ctx, s->func, &td, NULL, FUNC1(inlink->h, FUNC5(ctx)));

    out->width  = outlink->w;
    out->height = outlink->h;

    FUNC3(&in);
    return FUNC4(outlink, out);
}