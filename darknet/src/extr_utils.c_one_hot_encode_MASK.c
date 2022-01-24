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
 void* FUNC0 (int,int) ; 

float **FUNC1(float *a, int n, int k)
{
    int i;
    float **t = FUNC0(n, sizeof(float*));
    for(i = 0; i < n; ++i){
        t[i] = FUNC0(k, sizeof(float));
        int index = (int)a[i];
        t[i][index] = 1;
    }
    return t;
}