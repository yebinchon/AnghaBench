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
struct TYPE_14__ {int /*<<< orphan*/  maskedclamp; } ;
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {void* w; void* h; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_11__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {int depth; TYPE_6__ dsp; void* overshoot; void* undershoot; void** width; void** height; int /*<<< orphan*/  linesize; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_9__ {int depth; } ;
typedef  TYPE_2__ MaskedClampContext ;
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
 int /*<<< orphan*/  maskedclamp16 ; 
 int /*<<< orphan*/  maskedclamp8 ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MaskedClampContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    int vsub, hsub, ret;

    s->nb_planes = FUNC3(inlink->format);

    if ((ret = FUNC2(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;
    s->height[1] = s->height[2] = FUNC0(inlink->h, vsub);
    s->height[0] = s->height[3] = inlink->h;
    s->width[1]  = s->width[2]  = FUNC0(inlink->w, hsub);
    s->width[0]  = s->width[3]  = inlink->w;

    s->depth = desc->comp[0].depth;
    s->undershoot = FUNC1(s->undershoot, (1 << s->depth) - 1);
    s->overshoot = FUNC1(s->overshoot, (1 << s->depth) - 1);

    if (s->depth <= 8)
        s->dsp.maskedclamp = maskedclamp8;
    else
        s->dsp.maskedclamp = maskedclamp16;

    if (ARCH_X86)
        FUNC5(&s->dsp, s->depth);

    return 0;
}