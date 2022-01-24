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
 scalar_t__ FUNC0 (float,int) ; 
 float FUNC1 (float) ; 

void FUNC2(float *x, float *dx, int batch, int filters, int spatial)
{
    int b,f,i;
    for(b = 0; b < batch; ++b){
        for(i = 0; i < spatial; ++i){
            float sum = 0;
            for(f = 0; f < filters; ++f){
                int index = b*filters*spatial + f*spatial + i;
                sum += FUNC0(x[index], 2);
            }
            sum = FUNC1(sum);
            for(f = 0; f < filters; ++f){
                int index = b*filters*spatial + f*spatial + i;
                x[index] /= sum;
                dx[index] = (1 - x[index]) / sum;
            }
        }
    }
}