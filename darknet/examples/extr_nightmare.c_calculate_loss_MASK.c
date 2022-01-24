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
 float FUNC0 (float*,int) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float*,int) ; 

void FUNC3(float *output, float *delta, int n, float thresh)
{
    int i;
    float mean = FUNC0(output, n); 
    float var = FUNC2(output, n);
    for(i = 0; i < n; ++i){
        if(delta[i] > mean + thresh*FUNC1(var)) delta[i] = output[i];
        else delta[i] = 0;
    }
}