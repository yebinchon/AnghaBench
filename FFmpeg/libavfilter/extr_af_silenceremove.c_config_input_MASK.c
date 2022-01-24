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
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int sample_rate; int channels; TYPE_3__* dst; } ;
struct TYPE_6__ {int window_size; int window_ratio; int start_duration; int start_silence; int stop_duration; int stop_silence; int /*<<< orphan*/  mode; scalar_t__ start_periods; scalar_t__ stop_found_periods; scalar_t__ stop_holdoff_end; scalar_t__ stop_holdoff_offset; void* stop_silence_hold; void* stop_holdoff; scalar_t__ start_found_periods; scalar_t__ start_holdoff_end; scalar_t__ start_holdoff_offset; void* start_silence_hold; void* start_holdoff; int /*<<< orphan*/  stop_silence_opt; int /*<<< orphan*/  stop_duration_opt; int /*<<< orphan*/  start_silence_opt; int /*<<< orphan*/  start_duration_opt; void* window; int /*<<< orphan*/  next_pts; } ;
typedef  TYPE_1__ SilenceRemoveContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  SILENCE_COPY ; 
 int /*<<< orphan*/  SILENCE_TRIM ; 
 void* FUNC2 (int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    SilenceRemoveContext *s = ctx->priv;

    s->next_pts = AV_NOPTS_VALUE;
    s->window_size = FUNC1((inlink->sample_rate * s->window_ratio), 1) * inlink->channels;
    s->window = FUNC2(s->window_size, sizeof(*s->window));
    if (!s->window)
        return FUNC0(ENOMEM);

    FUNC4(s);

    s->start_duration = FUNC3(s->start_duration_opt, inlink->sample_rate,
                                   AV_TIME_BASE);
    s->start_silence  = FUNC3(s->start_silence_opt, inlink->sample_rate,
                                   AV_TIME_BASE);
    s->stop_duration  = FUNC3(s->stop_duration_opt, inlink->sample_rate,
                                   AV_TIME_BASE);
    s->stop_silence   = FUNC3(s->stop_silence_opt, inlink->sample_rate,
                                   AV_TIME_BASE);

    s->start_holdoff = FUNC2(FUNC1(s->start_duration, 1),
                                       sizeof(*s->start_holdoff) *
                                       inlink->channels);
    if (!s->start_holdoff)
        return FUNC0(ENOMEM);

    s->start_silence_hold = FUNC2(FUNC1(s->start_silence, 1),
                                            sizeof(*s->start_silence_hold) *
                                            inlink->channels);
    if (!s->start_silence_hold)
        return FUNC0(ENOMEM);

    s->start_holdoff_offset = 0;
    s->start_holdoff_end    = 0;
    s->start_found_periods  = 0;

    s->stop_holdoff = FUNC2(FUNC1(s->stop_duration, 1),
                                      sizeof(*s->stop_holdoff) *
                                      inlink->channels);
    if (!s->stop_holdoff)
        return FUNC0(ENOMEM);

    s->stop_silence_hold = FUNC2(FUNC1(s->stop_silence, 1),
                                           sizeof(*s->stop_silence_hold) *
                                           inlink->channels);
    if (!s->stop_silence_hold)
        return FUNC0(ENOMEM);

    s->stop_holdoff_offset = 0;
    s->stop_holdoff_end    = 0;
    s->stop_found_periods  = 0;

    if (s->start_periods)
        s->mode = SILENCE_TRIM;
    else
        s->mode = SILENCE_COPY;

    return 0;
}