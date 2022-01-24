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
 int /*<<< orphan*/  FUNC0 (double*,float*,int) ; 

__attribute__((used)) static void FUNC1(float *lsfnew, const float *lsfold, float *Az,
                           int num_subfr)
{
    double lsfint[LP_FILTER_ORDER];
    int i,j;
    float t, t0 = 1.0 / num_subfr;

    t = t0 * 0.5;
    for (i = 0; i < num_subfr; i++) {
        for (j = 0; j < LP_FILTER_ORDER; j++)
            lsfint[j] = lsfold[j] * (1 - t) + t * lsfnew[j];

        FUNC0(lsfint, Az, LP_FILTER_ORDER);
        Az += LP_FILTER_ORDER;
        t += t0;
    }
}