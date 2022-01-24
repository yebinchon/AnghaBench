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
 float FUNC0 (char*) ; 
 float* FUNC1 (int,int) ; 
 char* FUNC2 (char*,char) ; 

float *FUNC3(char **labels, int n)
{
    float *v = FUNC1(n, sizeof(float));
    int i;
    for(i = 0; i < n; ++i){
        char *p = FUNC2(labels[i], ' ');
        *p = 0;
        v[i] = FUNC0(p+1);
    }
    return v;
}