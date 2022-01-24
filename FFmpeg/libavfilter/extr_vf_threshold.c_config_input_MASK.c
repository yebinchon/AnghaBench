#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  depth; void** width; void** height; int /*<<< orphan*/  nb_planes; } ;
typedef  TYPE_2__ ThresholdContext ;
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {void* w; void* h; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_11__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_9__ {int /*<<< orphan*/  depth; } ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ThresholdContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC2(inlink->format);
    int vsub, hsub;

    s->nb_planes = FUNC1(inlink->format);

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;
    s->height[1] = s->height[2] = FUNC0(inlink->h, vsub);
    s->height[0] = s->height[3] = inlink->h;
    s->width[1]  = s->width[2]  = FUNC0(inlink->w, hsub);
    s->width[0]  = s->width[3]  = inlink->w;
    s->depth = desc->comp[0].depth;

    FUNC3(s);

    return 0;
}