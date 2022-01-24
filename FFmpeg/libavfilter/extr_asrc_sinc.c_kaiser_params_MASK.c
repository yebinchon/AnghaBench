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
 int FUNC0 (float) ; 
 float FUNC1 (float,float) ; 

__attribute__((used)) static void FUNC2(float att, float Fc, float tr_bw, float *beta, int *num_taps)
{
    *beta = *beta < 0.f ? FUNC1(att, tr_bw * .5f / Fc): *beta;
    att = att < 60.f ? (att - 7.95f) / (2.285f * M_PI * 2.f) :
        ((.0007528358f-1.577737e-05 * *beta) * *beta + 0.6248022f) * *beta + .06186902f;
    *num_taps = !*num_taps ? FUNC0(att/tr_bw + 1) : *num_taps;
}