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
 scalar_t__ FUNC0 (float,float) ; 

__attribute__((used)) static inline void FUNC1(int *out, const float *in, const float *scaled,
                                  int size, int is_signed, int maxval, const float Q34,
                                  const float rounding)
{
    int i;
    for (i = 0; i < size; i++) {
        float qc = scaled[i] * Q34;
        int tmp = (int)FUNC0(qc + rounding, (float)maxval);
        if (is_signed && in[i] < 0.0f) {
            tmp = -tmp;
        }
        out[i] = tmp;
    }
}