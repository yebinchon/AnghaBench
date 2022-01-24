#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__** inputs; } ;
struct TYPE_5__ {scalar_t__ w; scalar_t__ h; int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  time_base; TYPE_2__* src; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *mainlink = ctx->inputs[0];
    AVFilterLink *alphalink = ctx->inputs[1];
    if (mainlink->w != alphalink->w || mainlink->h != alphalink->h) {
        FUNC1(ctx, AV_LOG_ERROR,
               "Input frame sizes do not match (%dx%d vs %dx%d).\n",
               mainlink->w, mainlink->h,
               alphalink->w, alphalink->h);
        return FUNC0(EINVAL);
    }

    outlink->w = mainlink->w;
    outlink->h = mainlink->h;
    outlink->time_base = mainlink->time_base;
    outlink->sample_aspect_ratio = mainlink->sample_aspect_ratio;
    outlink->frame_rate = mainlink->frame_rate;
    return 0;
}