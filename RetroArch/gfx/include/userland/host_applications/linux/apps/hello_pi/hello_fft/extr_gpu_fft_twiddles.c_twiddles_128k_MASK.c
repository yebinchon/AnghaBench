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
 double GPU_FFT_QPUS ; 
 float* FUNC0 (double,float*,double) ; 
 float* FUNC1 (double,float*,int /*<<< orphan*/ ) ; 
 float* FUNC2 (double,float*,double) ; 

__attribute__((used)) static void FUNC3(double two_pi, float *out) {
    double N=128*1024;
    int q;

    out = FUNC1(two_pi, out, 0);
    out = FUNC2(two_pi, out, two_pi/N * 16*16);
    out = FUNC2(two_pi, out, two_pi/N * 16);
    out = FUNC2(two_pi, out, two_pi/N * GPU_FFT_QPUS);

    for (q=0; q<GPU_FFT_QPUS; q++)
        out = FUNC0(two_pi, out, two_pi/N*q);
}