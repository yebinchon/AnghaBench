#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int batch_normalize; int* scales; void* rolling_variance; void* rolling_mean; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

layer FUNC1(layer l, int n)
{
    int j;
    l.batch_normalize=1;
    l.scales = FUNC0(n, sizeof(float));
    for(j = 0; j < n; ++j){
        l.scales[j] = 1;
    }
    l.rolling_mean = FUNC0(n, sizeof(float));
    l.rolling_variance = FUNC0(n, sizeof(float));
    return l;
}