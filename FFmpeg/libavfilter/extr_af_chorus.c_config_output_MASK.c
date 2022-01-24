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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int channels; double sample_rate; int /*<<< orphan*/  format; TYPE_3__* src; } ;
struct TYPE_6__ {int channels; int num_chorus; double* delays; double* depths; int* length; int* speeds; float in_gain; double out_gain; int /*<<< orphan*/  max_samples; int /*<<< orphan*/  chorusbuf; int /*<<< orphan*/  fade_out; void** phase; void* counter; scalar_t__* decays; int /*<<< orphan*/ * lookup_table; } ;
typedef  TYPE_1__ ChorusContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S32 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WAVE_SIN ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ChorusContext *s = ctx->priv;
    float sum_in_volume = 1.0;
    int n;

    s->channels = outlink->channels;

    for (n = 0; n < s->num_chorus; n++) {
        int samples = (int) ((s->delays[n] + s->depths[n]) * outlink->sample_rate / 1000.0);
        int depth_samples = (int) (s->depths[n] * outlink->sample_rate / 1000.0);

        s->length[n] = outlink->sample_rate / s->speeds[n];

        s->lookup_table[n] = FUNC4(sizeof(int32_t) * s->length[n]);
        if (!s->lookup_table[n])
            return FUNC0(ENOMEM);

        FUNC6(WAVE_SIN, AV_SAMPLE_FMT_S32, s->lookup_table[n],
                               s->length[n], 0., depth_samples, 0);
        s->max_samples = FUNC1(s->max_samples, samples);
    }

    for (n = 0; n < s->num_chorus; n++)
        sum_in_volume += s->decays[n];

    if (s->in_gain * (sum_in_volume) > 1.0 / s->out_gain)
        FUNC3(ctx, AV_LOG_WARNING, "output gain can cause saturation or clipping of output\n");

    s->counter = FUNC2(outlink->channels, sizeof(*s->counter));
    if (!s->counter)
        return FUNC0(ENOMEM);

    s->phase = FUNC2(outlink->channels, sizeof(*s->phase));
    if (!s->phase)
        return FUNC0(ENOMEM);

    for (n = 0; n < outlink->channels; n++) {
        s->phase[n] = FUNC2(s->num_chorus, sizeof(int));
        if (!s->phase[n])
            return FUNC0(ENOMEM);
    }

    s->fade_out = s->max_samples;

    return FUNC5(&s->chorusbuf, NULL,
                                              outlink->channels,
                                              s->max_samples,
                                              outlink->format, 0);
}