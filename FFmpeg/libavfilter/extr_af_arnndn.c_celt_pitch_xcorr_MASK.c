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
 float FUNC0 (float const*,float const*,int) ; 
 int /*<<< orphan*/  FUNC1 (float const*,float const*,float*,int) ; 

__attribute__((used)) static void FUNC2(const float *x, const float *y,
                             float *xcorr, int len, int max_pitch)
{
    int i;

    for (i = 0; i < max_pitch - 3; i += 4) {
        float sum[4] = { 0, 0, 0, 0};

        FUNC1(x, y + i, sum, len);

        xcorr[i]     = sum[0];
        xcorr[i + 1] = sum[1];
        xcorr[i + 2] = sum[2];
        xcorr[i + 3] = sum[3];
    }
    /* In case max_pitch isn't a multiple of 4, do non-unrolled version. */
    for (; i < max_pitch; i++) {
        xcorr[i] = FUNC0(x, y + i, len);
    }
}