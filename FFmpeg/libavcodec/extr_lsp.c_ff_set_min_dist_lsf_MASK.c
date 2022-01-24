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

void FUNC1(float *lsf, double min_spacing, int size)
{
    int i;
    float prev = 0.0;
    for (i = 0; i < size; i++)
        prev = lsf[i] = FUNC0(lsf[i], prev + min_spacing);
}