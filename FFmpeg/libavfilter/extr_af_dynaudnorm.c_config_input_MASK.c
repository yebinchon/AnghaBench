#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int channels; int /*<<< orphan*/  sample_rate; TYPE_3__* dst; } ;
struct TYPE_8__ {int frame_len; double* prev_amplification_factor; int filter_size; int channels; int delay; void** fade_factors; void** gain_history_smoothed; void** gain_history_minimum; void** gain_history_original; void* weights; void* is_enabled; void* compress_threshold; void* dc_correction_value; int /*<<< orphan*/  frame_len_msec; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (int,int) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (void**,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    DynamicAudioNormalizerContext *s = ctx->priv;
    int c;

    FUNC8(ctx);

    s->frame_len = FUNC5(inlink->sample_rate, s->frame_len_msec);
    FUNC2(ctx, AV_LOG_DEBUG, "frame len %d\n", s->frame_len);

    s->fade_factors[0] = FUNC3(s->frame_len, sizeof(*s->fade_factors[0]));
    s->fade_factors[1] = FUNC3(s->frame_len, sizeof(*s->fade_factors[1]));

    s->prev_amplification_factor = FUNC3(inlink->channels, sizeof(*s->prev_amplification_factor));
    s->dc_correction_value = FUNC1(inlink->channels, sizeof(*s->dc_correction_value));
    s->compress_threshold = FUNC1(inlink->channels, sizeof(*s->compress_threshold));
    s->gain_history_original = FUNC1(inlink->channels, sizeof(*s->gain_history_original));
    s->gain_history_minimum = FUNC1(inlink->channels, sizeof(*s->gain_history_minimum));
    s->gain_history_smoothed = FUNC1(inlink->channels, sizeof(*s->gain_history_smoothed));
    s->weights = FUNC3(s->filter_size, sizeof(*s->weights));
    s->is_enabled = FUNC4(s->filter_size);
    if (!s->prev_amplification_factor || !s->dc_correction_value ||
        !s->compress_threshold || !s->fade_factors[0] || !s->fade_factors[1] ||
        !s->gain_history_original || !s->gain_history_minimum ||
        !s->gain_history_smoothed || !s->is_enabled || !s->weights)
        return FUNC0(ENOMEM);

    for (c = 0; c < inlink->channels; c++) {
        s->prev_amplification_factor[c] = 1.0;

        s->gain_history_original[c] = FUNC4(s->filter_size);
        s->gain_history_minimum[c]  = FUNC4(s->filter_size);
        s->gain_history_smoothed[c] = FUNC4(s->filter_size);

        if (!s->gain_history_original[c] || !s->gain_history_minimum[c] ||
            !s->gain_history_smoothed[c])
            return FUNC0(ENOMEM);
    }

    FUNC7(s->fade_factors, s->frame_len);
    FUNC6(s);

    s->channels = inlink->channels;
    s->delay = s->filter_size;

    return 0;
}