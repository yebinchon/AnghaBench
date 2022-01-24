#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int w; int h; int c; scalar_t__* data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

image FUNC3(image a, image b)
{
    int i,j;
    image dist = FUNC0(a.w, a.h, 1);
    for(i = 0; i < a.c; ++i){
        for(j = 0; j < a.h*a.w; ++j){
            dist.data[j] += FUNC1(a.data[i*a.h*a.w+j]-b.data[i*a.h*a.w+j],2);
        }
    }
    for(j = 0; j < a.h*a.w; ++j){
        dist.data[j] = FUNC2(dist.data[j]);
    }
    return dist;
}