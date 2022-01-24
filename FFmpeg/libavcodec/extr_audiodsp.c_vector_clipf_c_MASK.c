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
 float FUNC0 (float const,float,float) ; 
 int /*<<< orphan*/  FUNC1 (float*,float const*,float*,float*,int) ; 

__attribute__((used)) static void FUNC2(float *dst, const float *src, int len,
                           float min, float max)
{
    int i;

    if (min < 0 && max > 0) {
        FUNC1(dst, src, &min, &max, len);
    } else {
        for (i = 0; i < len; i += 8) {
            dst[i]     = FUNC0(src[i], min, max);
            dst[i + 1] = FUNC0(src[i + 1], min, max);
            dst[i + 2] = FUNC0(src[i + 2], min, max);
            dst[i + 3] = FUNC0(src[i + 3], min, max);
            dst[i + 4] = FUNC0(src[i + 4], min, max);
            dst[i + 5] = FUNC0(src[i + 5], min, max);
            dst[i + 6] = FUNC0(src[i + 6], min, max);
            dst[i + 7] = FUNC0(src[i + 7], min, max);
        }
    }
}