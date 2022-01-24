#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  sse_line; } ;
struct TYPE_16__ {TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_15__ {unsigned int h; unsigned int w; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_14__ {int nb_components; TYPE_2__* comp; int /*<<< orphan*/  log2_chroma_w; int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_13__ {int nb_components; int* max; int is_rgb; char* comps; unsigned int* planeheight; unsigned int* planewidth; double* planeweight; TYPE_7__ dsp; int /*<<< orphan*/  average_max; int /*<<< orphan*/  rgba_map; } ;
struct TYPE_12__ {int depth; } ;
struct TYPE_11__ {scalar_t__ w; scalar_t__ h; scalar_t__ format; } ;
typedef  TYPE_3__ PSNRContext ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC6 (double) ; 
 int /*<<< orphan*/  sse_line_16bit ; 
 int /*<<< orphan*/  sse_line_8bit ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = FUNC3(inlink->format);
    AVFilterContext *ctx  = inlink->dst;
    PSNRContext *s = ctx->priv;
    double average_max;
    unsigned sum;
    int j;

    s->nb_components = desc->nb_components;
    if (ctx->inputs[0]->w != ctx->inputs[1]->w ||
        ctx->inputs[0]->h != ctx->inputs[1]->h) {
        FUNC2(ctx, AV_LOG_ERROR, "Width and height of input videos must be same.\n");
        return FUNC0(EINVAL);
    }
    if (ctx->inputs[0]->format != ctx->inputs[1]->format) {
        FUNC2(ctx, AV_LOG_ERROR, "Inputs must be of same pixel format.\n");
        return FUNC0(EINVAL);
    }

    s->max[0] = (1 << desc->comp[0].depth) - 1;
    s->max[1] = (1 << desc->comp[1].depth) - 1;
    s->max[2] = (1 << desc->comp[2].depth) - 1;
    s->max[3] = (1 << desc->comp[3].depth) - 1;

    s->is_rgb = FUNC4(s->rgba_map, inlink->format) >= 0;
    s->comps[0] = s->is_rgb ? 'r' : 'y' ;
    s->comps[1] = s->is_rgb ? 'g' : 'u' ;
    s->comps[2] = s->is_rgb ? 'b' : 'v' ;
    s->comps[3] = 'a';

    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planewidth[1]  = s->planewidth[2]  = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planewidth[0]  = s->planewidth[3]  = inlink->w;
    sum = 0;
    for (j = 0; j < s->nb_components; j++)
        sum += s->planeheight[j] * s->planewidth[j];
    average_max = 0;
    for (j = 0; j < s->nb_components; j++) {
        s->planeweight[j] = (double) s->planeheight[j] * s->planewidth[j] / sum;
        average_max += s->max[j] * s->planeweight[j];
    }
    s->average_max = FUNC6(average_max);

    s->dsp.sse_line = desc->comp[0].depth > 8 ? sse_line_16bit : sse_line_8bit;
    if (ARCH_X86)
        FUNC5(&s->dsp, desc->comp[0].depth);

    return 0;
}