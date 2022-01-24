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
 float FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,int,int) ; 
 float FUNC2 (float*,int) ; 

int FUNC3(float *a, int n)
{
    float sum = FUNC2(a, n);
    FUNC1(a, n, 1./sum);
    float r = FUNC0(0, 1);
    int i;
    for(i = 0; i < n; ++i){
        r = r - a[i];
        if (r <= 0) return i;
    }
    return n-1;
}