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
typedef  int /*<<< orphan*/  prediction_error ;

/* Variables and functions */
 float FUNC0 (float const*,float*,int) ; 
 float FUNC1 (double) ; 
 double FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,int) ; 
 float FUNC4 (float) ; 

float FUNC5(float fixed_gain_factor, float fixed_mean_energy,
                            float *prediction_error, float energy_mean,
                            const float *pred_table)
{
    // Equations 66-69:
    // ^g_c = ^gamma_gc * 100.05 (predicted dB + mean dB - dB of fixed vector)
    // Note 10^(0.05 * -10log(average x2)) = 1/sqrt((average x2)).
    float val = fixed_gain_factor *
        FUNC1(0.05 *
              (FUNC0(pred_table, prediction_error, 4) +
               energy_mean)) /
        FUNC4(fixed_mean_energy ? fixed_mean_energy : 1.0);

    // update quantified prediction error energy history
    FUNC3(&prediction_error[0], &prediction_error[1],
            3 * sizeof(prediction_error[0]));
    prediction_error[3] = 20.0 * FUNC2(fixed_gain_factor);

    return val;
}