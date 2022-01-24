#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {void* w; void* h; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_10__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_9__ {int depth; scalar_t__ maskedmin; int /*<<< orphan*/  maskedminmax; void** planewidth; void** planeheight; int /*<<< orphan*/  linesize; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_8__ {int depth; } ;
typedef  TYPE_2__ MaskedMinMaxContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maskedmax16 ; 
 int /*<<< orphan*/  maskedmax8 ; 
 int /*<<< orphan*/  maskedmin16 ; 
 int /*<<< orphan*/  maskedmin8 ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MaskedMinMaxContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC3(inlink->format);
    int vsub, hsub, ret;

    s->nb_planes = FUNC2(inlink->format);

    if ((ret = FUNC1(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;
    s->planeheight[1] = s->planeheight[2] = FUNC0(inlink->h, vsub);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planewidth[1]  = s->planewidth[2]  = FUNC0(inlink->w, hsub);
    s->planewidth[0]  = s->planewidth[3]  = inlink->w;

    s->depth = desc->comp[0].depth;

    if (desc->comp[0].depth == 8)
        s->maskedminmax = s->maskedmin ? maskedmin8  : maskedmax8;
    else
        s->maskedminmax = s->maskedmin ? maskedmin16 : maskedmax16;

    return 0;
}