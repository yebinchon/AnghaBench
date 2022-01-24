#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ passthrough; } ;
typedef  TYPE_3__ TransContext ;
struct TYPE_23__ {TYPE_5__* out; TYPE_5__* in; } ;
typedef  TYPE_4__ ThreadData ;
struct TYPE_26__ {TYPE_2__* internal; TYPE_6__** outputs; TYPE_3__* priv; } ;
struct TYPE_25__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_7__* dst; } ;
struct TYPE_20__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_24__ {TYPE_1__ sample_aspect_ratio; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* execute ) (TYPE_7__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__**) ; 
 int FUNC4 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 TYPE_5__* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_slice ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    TransContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;

    if (s->passthrough)
        return FUNC4(outlink, in);

    out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }
    FUNC2(out, in);

    if (in->sample_aspect_ratio.num == 0) {
        out->sample_aspect_ratio = in->sample_aspect_ratio;
    } else {
        out->sample_aspect_ratio.num = in->sample_aspect_ratio.den;
        out->sample_aspect_ratio.den = in->sample_aspect_ratio.num;
    }

    td.in = in, td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, NULL, FUNC1(outlink->h, FUNC5(ctx)));
    FUNC3(&in);
    return FUNC4(outlink, out);
}