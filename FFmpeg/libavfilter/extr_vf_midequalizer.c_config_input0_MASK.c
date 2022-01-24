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
struct TYPE_9__ {int histogram_size; int /*<<< orphan*/  midequalizer; void* cchange; void** histogram; void*** width; void*** height; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_8__ {int depth; } ;
typedef  TYPE_2__ MidEqualizerContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  midequalizer16 ; 
 int /*<<< orphan*/  midequalizer8 ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    MidEqualizerContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    int vsub, hsub;

    s->nb_planes = FUNC3(inlink->format);

    hsub = desc->log2_chroma_w;
    vsub = desc->log2_chroma_h;

    s->height[0][0] = s->height[0][3] = inlink->h;
    s->width[0][0]  = s->width[0][3]  = inlink->w;
    s->height[0][1] = s->height[0][2] = FUNC1(inlink->h, vsub);
    s->width[0][1]  = s->width[0][2]  = FUNC1(inlink->w, hsub);

    s->histogram_size = 1 << desc->comp[0].depth;

    s->histogram[0] = FUNC2(s->histogram_size, sizeof(float));
    s->histogram[1] = FUNC2(s->histogram_size, sizeof(float));
    s->cchange      = FUNC2(s->histogram_size, sizeof(unsigned));
    if (!s->histogram[0] || !s->histogram[1] || !s->cchange)
        return FUNC0(ENOMEM);

    if (s->histogram_size == 256) {
        s->midequalizer = midequalizer8;
    } else {
        s->midequalizer = midequalizer16;
    }

    return 0;
}