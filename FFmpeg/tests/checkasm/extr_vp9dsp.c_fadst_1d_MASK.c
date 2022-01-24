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
 int M_PI ; 
 double const FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(double *out, const double *in, int sz)
{
    int k, n;

    for (k = 0; k < sz; k++) {
        out[k] = 0.0;
        for (n = 0; n < sz; n++)
            out[k] += in[n] * FUNC0(M_PI * (2 * n + 1) * (2 * k + 1) / (sz * 4.0));
    }
}