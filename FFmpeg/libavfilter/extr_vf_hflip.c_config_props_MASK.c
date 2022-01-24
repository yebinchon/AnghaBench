#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  format; void* h; void* w; TYPE_1__* dst; } ;
struct TYPE_11__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_10__ {int /*<<< orphan*/  max_step; void** planeheight; void** planewidth; } ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ FlipContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 void* FUNC0 (void*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    FlipContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *pix_desc = FUNC3(inlink->format);
    const int hsub = pix_desc->log2_chroma_w;
    const int vsub = pix_desc->log2_chroma_h;
    int nb_planes;

    FUNC1(s->max_step, NULL, pix_desc);
    s->planewidth[0]  = s->planewidth[3]  = inlink->w;
    s->planewidth[1]  = s->planewidth[2]  = FUNC0(inlink->w, hsub);
    s->planeheight[0] = s->planeheight[3] = inlink->h;
    s->planeheight[1] = s->planeheight[2] = FUNC0(inlink->h, vsub);

    nb_planes = FUNC2(inlink->format);

    return FUNC4(s, s->max_step, nb_planes);
}