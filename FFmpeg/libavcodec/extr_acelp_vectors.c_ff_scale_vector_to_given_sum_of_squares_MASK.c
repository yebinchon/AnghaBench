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
 float FUNC0 (float const*,float const*,int const) ; 
 float FUNC1 (float) ; 

void FUNC2(float *out, const float *in,
                                             float sum_of_squares, const int n)
{
    int i;
    float scalefactor = FUNC0(in, in, n);
    if (scalefactor)
        scalefactor = FUNC1(sum_of_squares / scalefactor);
    for (i = 0; i < n; i++)
        out[i] = in[i] * scalefactor;
}