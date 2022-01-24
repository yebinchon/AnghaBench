#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float* postfilter_synth_mem; int /*<<< orphan*/  postfilter_agc_mem; scalar_t__ formant_mem; int /*<<< orphan*/  postfilter_tilt_mem; } ;
typedef  TYPE_1__ QCELPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,int /*<<< orphan*/ ,int,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,float*,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,int) ; 

__attribute__((used)) static void FUNC6(QCELPContext *q, float *samples, float *lpc)
{
    static const float pow_0_775[10] = {
        0.775000, 0.600625, 0.465484, 0.360750, 0.279582,
        0.216676, 0.167924, 0.130141, 0.100859, 0.078166
    }, pow_0_625[10] = {
        0.625000, 0.390625, 0.244141, 0.152588, 0.095367,
        0.059605, 0.037253, 0.023283, 0.014552, 0.009095
    };
    float lpc_s[10], lpc_p[10], pole_out[170], zero_out[160];
    int n;

    for (n = 0; n < 10; n++) {
        lpc_s[n] = lpc[n] * pow_0_625[n];
        lpc_p[n] = lpc[n] * pow_0_775[n];
    }

    FUNC3(zero_out, lpc_s,
                                      q->formant_mem + 10, 160, 10);
    FUNC5(pole_out, q->postfilter_synth_mem, sizeof(float) * 10);
    FUNC2(pole_out + 10, lpc_p, zero_out, 160, 10);
    FUNC5(q->postfilter_synth_mem, pole_out + 160, sizeof(float) * 10);

    FUNC4(&q->postfilter_tilt_mem, 0.3, pole_out + 10, 160);

    FUNC1(samples, pole_out + 10,
                             FUNC0(q->formant_mem + 10,
                                                          q->formant_mem + 10,
                                                          160),
                             160, 0.9375, &q->postfilter_agc_mem);
}