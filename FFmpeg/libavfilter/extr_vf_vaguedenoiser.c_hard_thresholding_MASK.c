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
 float const FUNC0 (float) ; 

__attribute__((used)) static void FUNC1(float *block, const int width, const int height,
                              const int stride, const float threshold,
                              const float percent, const int unused)
{
    const float frac = 1.f - percent * 0.01f;
    int y, x;

    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            if (FUNC0(block[x]) <= threshold)
                block[x] *= frac;
        }
        block += stride;
    }
}