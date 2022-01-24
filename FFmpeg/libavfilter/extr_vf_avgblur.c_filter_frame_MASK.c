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
struct TYPE_21__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_20__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_19__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int nb_planes; int* planeheight; int* planewidth; int planes; int depth; } ;
typedef  TYPE_1__ AverageBlurContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AverageBlurContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int plane;

    if (FUNC3(in)) {
        out = in;
    } else {
        out = FUNC7(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        const int height = s->planeheight[plane];
        const int width = s->planewidth[plane];

        if (!(s->planes & (1 << plane))) {
            if (out != in)
                FUNC4(out->data[plane], out->linesize[plane],
                                    in->data[plane], in->linesize[plane],
                                    width * ((s->depth + 7) / 8), height);
            continue;
        }

        FUNC5(ctx, in, out, plane);
    }

    if (out != in)
        FUNC2(&in);
    return FUNC6(outlink, out);
}