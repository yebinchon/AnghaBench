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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_20__ {int width; int height; int plane; int linesize; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_23__ {int frame_count_out; int w; int h; int /*<<< orphan*/  time_base; TYPE_6__* dst; } ;
struct TYPE_22__ {int pts; int* linesize; scalar_t__* data; } ;
struct TYPE_21__ {int* values; int planes; TYPE_4__* picref; int /*<<< orphan*/ * dst16; scalar_t__ dst; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ GEQContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int const,int const) ; 
 int NAN ; 
 size_t VAR_H ; 
 size_t VAR_N ; 
 size_t VAR_SH ; 
 size_t VAR_SW ; 
 size_t VAR_T ; 
 size_t VAR_W ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int FUNC7 (TYPE_6__*) ; 
 TYPE_4__* FUNC8 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  slice_geq_filter ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    int plane;
    AVFilterContext *ctx = inlink->dst;
    const int nb_threads = FUNC7(ctx);
    GEQContext *geq = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;

    geq->values[VAR_N] = inlink->frame_count_out,
    geq->values[VAR_T] = in->pts == AV_NOPTS_VALUE ? NAN : in->pts * FUNC5(inlink->time_base),

    geq->picref = in;
    out = FUNC8(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC4(&in);
        return FUNC0(ENOMEM);
    }
    FUNC3(out, in);

    for (plane = 0; plane < geq->planes && out->data[plane]; plane++) {
        const int width = (plane == 1 || plane == 2) ? FUNC1(inlink->w, geq->hsub) : inlink->w;
        const int height = (plane == 1 || plane == 2) ? FUNC1(inlink->h, geq->vsub) : inlink->h;
        const int linesize = out->linesize[plane];
        ThreadData td;

        geq->dst = out->data[plane];
        geq->dst16 = (uint16_t*)out->data[plane];

        geq->values[VAR_W]  = width;
        geq->values[VAR_H]  = height;
        geq->values[VAR_SW] = width / (double)inlink->w;
        geq->values[VAR_SH] = height / (double)inlink->h;

        td.width = width;
        td.height = height;
        td.plane = plane;
        td.linesize = linesize;

        ctx->internal->execute(ctx, slice_geq_filter, &td, NULL, FUNC2(height, nb_threads));
    }

    FUNC4(&geq->picref);
    return FUNC6(outlink, out);
}