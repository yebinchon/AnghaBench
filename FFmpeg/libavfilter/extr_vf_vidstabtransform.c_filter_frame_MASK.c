#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VSTransformData ;
struct TYPE_20__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ VSFrame ;
struct TYPE_21__ {int /*<<< orphan*/  trans; int /*<<< orphan*/  td; } ;
typedef  TYPE_2__ TransformContext ;
struct TYPE_26__ {int planes; } ;
struct TYPE_25__ {int planes; } ;
struct TYPE_24__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_23__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* dst; } ;
struct TYPE_22__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    TransformContext *tc = ctx->priv;
    VSTransformData* td = &(tc->td);

    AVFilterLink *outlink = inlink->dst->outputs[0];
    int direct = 0;
    AVFrame *out;
    VSFrame inframe;
    int plane;

    if (FUNC3(in)) {
        direct = 1;
        out = in;
    } else {
        out = FUNC5(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }

    for (plane = 0; plane < FUNC10(td)->planes; plane++) {
        inframe.data[plane] = in->data[plane];
        inframe.linesize[plane] = in->linesize[plane];
    }
    if (direct) {
        FUNC11(td, &inframe, &inframe);
    } else { // separate frames
        VSFrame outframe;
        for (plane = 0; plane < FUNC9(td)->planes; plane++) {
            outframe.data[plane] = out->data[plane];
            outframe.linesize[plane] = out->linesize[plane];
        }
        FUNC11(td, &inframe, &outframe);
    }

    FUNC6(td, FUNC7(td, &tc->trans));

    FUNC8(td);

    if (!direct)
        FUNC2(&in);

    return FUNC4(outlink, out);
}