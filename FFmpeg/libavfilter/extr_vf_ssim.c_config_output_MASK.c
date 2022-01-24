#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_14__ {TYPE_9__ time_base; } ;
struct TYPE_13__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_12__ {TYPE_9__ time_base; int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* src; } ;
struct TYPE_11__ {TYPE_4__ fs; } ;
typedef  TYPE_1__ SSIMContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (TYPE_9__,TYPE_9__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SSIMContext *s = ctx->priv;
    AVFilterLink *mainlink = ctx->inputs[0];
    int ret;

    ret = FUNC3(&s->fs, ctx);
    if (ret < 0)
        return ret;
    outlink->w = mainlink->w;
    outlink->h = mainlink->h;
    outlink->time_base = mainlink->time_base;
    outlink->sample_aspect_ratio = mainlink->sample_aspect_ratio;
    outlink->frame_rate = mainlink->frame_rate;

    if ((ret = FUNC2(&s->fs)) < 0)
        return ret;

    outlink->time_base = s->fs.time_base;

    if (FUNC0(mainlink->time_base, outlink->time_base) &&
        FUNC0(ctx->inputs[1]->time_base, outlink->time_base))
        FUNC1(ctx, AV_LOG_WARNING, "not matching timebases found between first input: %d/%d and second input %d/%d, results may be incorrect!\n",
               mainlink->time_base.num, mainlink->time_base.den,
               ctx->inputs[1]->time_base.num, ctx->inputs[1]->time_base.den);

    return 0;
}