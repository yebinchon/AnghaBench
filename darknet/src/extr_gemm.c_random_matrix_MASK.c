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
 float RAND_MAX ; 
 float* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 

float *FUNC2(int rows, int cols)
{
    int i;
    float *m = FUNC0(rows*cols, sizeof(float));
    for(i = 0; i < rows*cols; ++i){
        m[i] = (float)FUNC1()/RAND_MAX;
    }
    return m;
}