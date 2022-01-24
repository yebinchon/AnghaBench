#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {void* w; void* h; int /*<<< orphan*/  format; TYPE_4__* dst; } ;
struct TYPE_8__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_7__ {void*** width; void*** height; int /*<<< orphan*/  nb_planes; } ;
typedef  TYPE_1__ MidEqualizerContext ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MidEqualizerContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC2(inlink->format);
    int vsub, hsub;

    s->nb_planes = FUNC1(inlink->format);

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;

    s->height[1][0] = s->height[1][3] = inlink->h;
    s->width[1][0]  = s->width[1][3]  = inlink->w;
    s->height[1][1] = s->height[1][2] = FUNC0(inlink->h, vsub);
    s->width[1][1]  = s->width[1][2]  = FUNC0(inlink->w, hsub);

    return 0;
}