#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int LP_FILTER_ORDER ; 
 int /*<<< orphan*/  SUBFR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,int /*<<< orphan*/ ,int) ; 
 float const* ff_pow_0_55 ; 
 float const* ff_pow_0_7 ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,float,float*) ; 

__attribute__((used)) static void FUNC3(const float *Az, int pitch_lag, float *freq,
                    float pitch_sharp_factor)
{
    float tmp1[SUBFR_SIZE+1], tmp2[LP_FILTER_ORDER+1];
    int i;

    tmp1[0] = 1.0;
    for (i = 0; i < LP_FILTER_ORDER; i++) {
        tmp1[i+1] = Az[i] * ff_pow_0_55[i];
        tmp2[i  ] = Az[i] * ff_pow_0_7 [i];
    }
    FUNC1(tmp1 + 11, 0, 37 * sizeof(float));

    FUNC0(freq, tmp2, tmp1, SUBFR_SIZE,
                                 LP_FILTER_ORDER);

    FUNC2(pitch_lag, pitch_sharp_factor, freq);
}