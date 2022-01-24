#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {int running_gain; int /*<<< orphan*/  sustain; } ;
typedef  TYPE_1__ hdcd_state ;
struct TYPE_11__ {int /*<<< orphan*/  bits_per_sample; int /*<<< orphan*/  analyze_mode; } ;
typedef  TYPE_2__ HDCDContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(HDCDContext *ctx, hdcd_state *state, int32_t *samples, int count, int stride)
{
    int32_t *samples_end = samples + count * stride;
    int gain = state->running_gain;
    int peak_extend, target_gain;
    int lead = 0;

    if (ctx->analyze_mode)
        FUNC2(state, samples, count, stride);

    FUNC3(ctx, state, &peak_extend, &target_gain);
    while (count > lead) {
        int envelope_run;
        int run;

        FUNC0(samples + lead * stride + stride * (count - lead) <= samples_end);
        run = FUNC5(ctx, state, 1, samples + lead * stride, count - lead, 0) + lead;
        envelope_run = run - 1;

        FUNC0(samples + envelope_run * stride <= samples_end);
        if (ctx->analyze_mode)
            gain = FUNC1(samples, envelope_run, stride, gain, target_gain, peak_extend, ctx->analyze_mode, state->sustain, -1);
        else
            gain = FUNC4(samples, envelope_run, stride, ctx->bits_per_sample, gain, target_gain, peak_extend);

        samples += envelope_run * stride;
        count -= envelope_run;
        lead = run - envelope_run;
        FUNC3(ctx, state, &peak_extend, &target_gain);
    }
    if (lead > 0) {
        FUNC0(samples + lead * stride <= samples_end);
        if (ctx->analyze_mode)
            gain = FUNC1(samples, lead, stride, gain, target_gain, peak_extend, ctx->analyze_mode, state->sustain, -1);
        else
            gain = FUNC4(samples, lead, stride, ctx->bits_per_sample, gain, target_gain, peak_extend);
    }

    state->running_gain = gain;
}