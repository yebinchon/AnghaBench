#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  format; TYPE_3__* dst; } ;
struct TYPE_5__ {scalar_t__ stop_duration; void* pad_stop; scalar_t__ start_duration; void* pad_start; int /*<<< orphan*/  rgba_color; int /*<<< orphan*/  color; int /*<<< orphan*/  draw; } ;
typedef  TYPE_1__ TPadContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    TPadContext *s = ctx->priv;

    FUNC3(&s->draw, inlink->format, 0);
    FUNC2(&s->draw, &s->color, s->rgba_color);

    if (s->start_duration)
        s->pad_start = FUNC1(s->start_duration, inlink->frame_rate, FUNC0(AV_TIME_BASE_Q));
    if (s->stop_duration)
        s->pad_stop = FUNC1(s->stop_duration, inlink->frame_rate, FUNC0(AV_TIME_BASE_Q));

    return 0;
}