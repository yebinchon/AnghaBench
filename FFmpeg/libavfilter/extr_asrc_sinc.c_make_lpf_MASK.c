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
 float M_PI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 float* FUNC1 (int,int) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float) ; 
 float FUNC4 (float) ; 

__attribute__((used)) static float *FUNC5(int num_taps, float Fc, float beta, float rho,
                       float scale, int dc_norm)
{
    int i, m = num_taps - 1;
    float *h = FUNC1(num_taps, sizeof(*h)), sum = 0;
    float mult = scale / FUNC2(beta), mult1 = 1.f / (.5f * m + rho);

    FUNC0(Fc >= 0 && Fc <= 1);

    for (i = 0; i <= m / 2; i++) {
        float z = i - .5f * m, x = z * M_PI, y = z * mult1;
        h[i] = x ? FUNC3(Fc * x) / x : Fc;
        sum += h[i] *= FUNC2(beta * FUNC4(1.f - y * y)) * mult;
        if (m - i != i) {
            h[m - i] = h[i];
            sum += h[i];
        }
    }

    for (i = 0; dc_norm && i < num_taps; i++)
        h[i] *= scale / sum;

    return h;
}