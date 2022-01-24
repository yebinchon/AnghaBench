#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_4__** outputs; } ;
struct TYPE_23__ {int /*<<< orphan*/  h; int /*<<< orphan*/  format; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_22__ {int /*<<< orphan*/ * data; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {int flags; } ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int AV_PIX_FMT_FLAG_PAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 TYPE_15__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_slice ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx  = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;

    out = FUNC7(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }
    FUNC2(out, in);

    /* copy palette if required */
    if (FUNC4(inlink->format)->flags & AV_PIX_FMT_FLAG_PAL)
        FUNC8(out->data[1], in->data[1], AVPALETTE_SIZE);

    td.in = in, td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, NULL, FUNC1(outlink->h, FUNC6(ctx)));

    FUNC3(&in);
    return FUNC5(outlink, out);
}