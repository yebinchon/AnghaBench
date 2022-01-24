#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  limiter; } ;
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {void* w; void* h; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_11__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {TYPE_6__ dsp; void* min; void* max; void** width; void** height; int /*<<< orphan*/  linesize; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_9__ {int depth; } ;
typedef  TYPE_2__ LimiterContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 void* FUNC0 (void*,int) ; 
 void* FUNC1 (void*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  limiter16 ; 
 int /*<<< orphan*/  limiter8 ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    LimiterContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    int depth, vsub, hsub, ret;

    s->nb_planes = FUNC3(inlink->format);

    if ((ret = FUNC2(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    depth = desc->comp[0].depth;
    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;
    s->height[1] = s->height[2] = FUNC0(inlink->h, vsub);
    s->height[0] = s->height[3] = inlink->h;
    s->width[1]  = s->width[2]  = FUNC0(inlink->w, hsub);
    s->width[0]  = s->width[3]  = inlink->w;

    s->max = FUNC1(s->max, (1 << depth) - 1);
    s->min = FUNC1(s->min, (1 << depth) - 1);

    if (depth == 8) {
        s->dsp.limiter = limiter8;
    } else {
        s->dsp.limiter = limiter16;
    }

    if (ARCH_X86)
        FUNC5(&s->dsp, desc->comp[0].depth);

    return 0;
}