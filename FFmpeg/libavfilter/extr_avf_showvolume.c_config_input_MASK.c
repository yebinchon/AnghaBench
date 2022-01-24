#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int sample_rate; int channels; TYPE_3__* dst; } ;
struct TYPE_6__ {int w; int rms_factor; int mode; int draw_persistent_duration; int persistent_max_frames; void* nb_frames_max_display; void* max_persistent; TYPE_5__ frame_rate; int /*<<< orphan*/  meter; void* max; void* color_lut; void* values; scalar_t__ nb_samples; } ;
typedef  TYPE_1__ ShowVolumeContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int,int) ; 
 int VAR_VARS_NB ; 
 void* FUNC2 (int,int) ; 
 int FUNC3 (TYPE_5__) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_peak ; 
 int /*<<< orphan*/  find_rms ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ShowVolumeContext *s = ctx->priv;

    s->nb_samples = FUNC1(1, FUNC4(inlink->sample_rate, s->frame_rate.den, s->frame_rate.num));
    s->values = FUNC2(inlink->channels * VAR_VARS_NB, sizeof(double));
    if (!s->values)
        return FUNC0(ENOMEM);

    s->color_lut = FUNC2(s->w, sizeof(*s->color_lut) * inlink->channels);
    if (!s->color_lut)
        return FUNC0(ENOMEM);

    s->max = FUNC2(inlink->channels, sizeof(*s->max));
    if (!s->max)
        return FUNC0(ENOMEM);

    s->rms_factor = 10000. / inlink->sample_rate;

    switch (s->mode) {
    case 0: s->meter = find_peak; break;
    case 1: s->meter = find_rms;  break;
    default: return AVERROR_BUG;
    }

    if (s->draw_persistent_duration > 0.) {
        s->persistent_max_frames = (int) FUNC1(FUNC3(s->frame_rate) * s->draw_persistent_duration, 1.);
        s->max_persistent = FUNC2(inlink->channels * s->persistent_max_frames, sizeof(*s->max_persistent));
        s->nb_frames_max_display = FUNC2(inlink->channels * s->persistent_max_frames, sizeof(*s->nb_frames_max_display));
    }
    return 0;
}