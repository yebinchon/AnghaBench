#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_5__** outputs; TYPE_2__* priv; } ;
struct TYPE_21__ {int w; int /*<<< orphan*/  h; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_20__ {int height; scalar_t__* linesize; scalar_t__* data; } ;
struct TYPE_19__ {TYPE_1__* comp; } ;
struct TYPE_18__ {int /*<<< orphan*/  temp; int /*<<< orphan*/ * power; int /*<<< orphan*/ * radius; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; } ;
struct TYPE_17__ {int depth; } ;
typedef  TYPE_2__ BoxBlurContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_4__* FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    BoxBlurContext *s = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;
    int plane;
    int cw = FUNC1(inlink->w, s->hsub), ch = FUNC1(in->height, s->vsub);
    int w[4] = { inlink->w, cw, cw, inlink->w };
    int h[4] = { in->height, ch, ch, in->height };
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    const int depth = desc->comp[0].depth;
    const int pixsize = (depth+7)/8;

    out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }
    FUNC2(out, in);

    for (plane = 0; plane < 4 && in->data[plane] && in->linesize[plane]; plane++)
        FUNC7(out->data[plane], out->linesize[plane],
              in ->data[plane], in ->linesize[plane],
              w[plane], h[plane], s->radius[plane], s->power[plane],
              s->temp, pixsize);

    for (plane = 0; plane < 4 && in->data[plane] && in->linesize[plane]; plane++)
        FUNC8(out->data[plane], out->linesize[plane],
              out->data[plane], out->linesize[plane],
              w[plane], h[plane], s->radius[plane], s->power[plane],
              s->temp, pixsize);

    FUNC3(&in);

    return FUNC5(outlink, out);
}