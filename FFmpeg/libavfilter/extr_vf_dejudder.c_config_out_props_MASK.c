#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_7__ {void* frame_rate; void* time_base; TYPE_3__* src; } ;
struct TYPE_6__ {int cycle; } ;
typedef  TYPE_1__ DejudderContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    DejudderContext *s = ctx->priv;
    AVFilterLink *inlink = outlink->src->inputs[0];

    outlink->time_base = FUNC2(inlink->time_base, FUNC1(1, 2 * s->cycle));
    outlink->frame_rate = FUNC2(inlink->frame_rate, FUNC1(2 * s->cycle, 1));

    FUNC0(ctx, AV_LOG_VERBOSE, "cycle:%d\n", s->cycle);

    return 0;
}