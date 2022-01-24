#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_15__ {TYPE_1__* internal; TYPE_4__** outputs; TYPE_3__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_13__ {int /*<<< orphan*/  nb_threads; int /*<<< orphan*/ * planewidth; int /*<<< orphan*/ * planeheight; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ ConvolutionContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_slice ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    ConvolutionContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    ThreadData td;

    out = FUNC5(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }
    FUNC2(out, in);

    td.in = in;
    td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, NULL, FUNC1(s->planeheight[1], s->planewidth[1], s->nb_threads));

    FUNC3(&in);
    return FUNC4(outlink, out);
}