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
 float FUNC0 (float,float) ; 
 float FUNC1 (float,float) ; 
 float FUNC2 (float const) ; 
 scalar_t__ FUNC3 (float,float) ; 
 float FUNC4 (float) ; 

__attribute__((used)) static inline float FUNC5(int group_len, int swb_size, float thresh,
                                     const float *scaled, float nzslope) {
    const float iswb_size = 1.0f / swb_size;
    const float iswb_sizem1 = 1.0f / (swb_size - 1);
    const float ethresh = thresh;
    float form = 0.0f, weight = 0.0f;
    int w2, i;
    for (w2 = 0; w2 < group_len; w2++) {
        float e = 0.0f, e2 = 0.0f, var = 0.0f, maxval = 0.0f;
        float nzl = 0;
        for (i = 0; i < swb_size; i++) {
            float s = FUNC2(scaled[w2*128+i]);
            maxval = FUNC0(maxval, s);
            e += s;
            e2 += s *= s;
            /* We really don't want a hard non-zero-line count, since
             * even below-threshold lines do add up towards band spectral power.
             * So, fall steeply towards zero, but smoothly
             */
            if (s >= ethresh) {
                nzl += 1.0f;
            } else {
                if (nzslope == 2.f)
                    nzl += (s / ethresh) * (s / ethresh);
                else
                    nzl += FUNC3(s / ethresh, nzslope);
            }
        }
        if (e2 > thresh) {
            float frm;
            e *= iswb_size;

            /** compute variance */
            for (i = 0; i < swb_size; i++) {
                float d = FUNC2(scaled[w2*128+i]) - e;
                var += d*d;
            }
            var = FUNC4(var * iswb_sizem1);

            e2 *= iswb_size;
            frm = e / FUNC1(e+4*var,maxval);
            form += e2 * FUNC4(frm) / FUNC0(0.5f,nzl);
            weight += e2;
        }
    }
    if (weight > 0) {
        return form / weight;
    } else {
        return 1.0f;
    }
}