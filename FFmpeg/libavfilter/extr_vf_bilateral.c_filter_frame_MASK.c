#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_17__ {int* linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {int nb_planes; int planes; int* planewidth; int depth; int /*<<< orphan*/ * planeheight; int /*<<< orphan*/  sigmaR; int /*<<< orphan*/  sigmaS; } ;
typedef  TYPE_1__ BilateralContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    BilateralContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;

    out = FUNC7(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);

    for (int plane = 0; plane < s->nb_planes; plane++) {
        if (!(s->planes & (1 << plane))) {
            FUNC3(out->data[plane], out->linesize[plane],
                                in->data[plane], in->linesize[plane],
                                s->planewidth[plane] * ((s->depth + 7) / 8), s->planeheight[plane]);
            continue;
        }

        if (s->depth <= 8)
           FUNC4(s, in->data[plane], out->data[plane], s->sigmaS, s->sigmaR,
                      s->planewidth[plane], s->planeheight[plane],
                      in->linesize[plane], out->linesize[plane]);
        else
           FUNC5(s, in->data[plane], out->data[plane], s->sigmaS, s->sigmaR,
                      s->planewidth[plane], s->planeheight[plane],
                      in->linesize[plane] / 2, out->linesize[plane] / 2);
    }

    FUNC2(&in);
    return FUNC6(outlink, out);
}