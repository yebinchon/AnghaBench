#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int nb_samples; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; TYPE_3__* dst; } ;
struct TYPE_7__ {int delay; int distance_m; int distance_cm; double distance_mm; unsigned int buf_size; TYPE_5__* delay_frame; int /*<<< orphan*/  temp; } ;
typedef  TYPE_1__ CompensationDelayContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int COMP_DELAY_MAX_DELAY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_5__* FUNC2 () ; 
 int FUNC3 (TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    CompensationDelayContext *s = ctx->priv;
    unsigned min_size, new_size = 1;

    s->delay = (s->distance_m * 100. + s->distance_cm * 1. + s->distance_mm * .1) *
               FUNC1(s->temp) * inlink->sample_rate;
    min_size = inlink->sample_rate * COMP_DELAY_MAX_DELAY;

    while (new_size < min_size)
        new_size <<= 1;

    s->delay_frame = FUNC2();
    if (!s->delay_frame)
        return FUNC0(ENOMEM);

    s->buf_size                    = new_size;
    s->delay_frame->format         = inlink->format;
    s->delay_frame->nb_samples     = new_size;
    s->delay_frame->channel_layout = inlink->channel_layout;

    return FUNC3(s->delay_frame, 32);
}