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
struct TYPE_4__ {double* data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 double* FUNC0 (int,int) ; 
 TYPE_1__ FUNC1 (int,int,int) ; 
 double FUNC2 () ; 

image FUNC3(int w, int h, int c)
{
    image out = FUNC1(w,h,c);
    out.data = FUNC0(h*w*c, sizeof(float));
    int i;
    for(i = 0; i < w*h*c; ++i){
        out.data[i] = (FUNC2() * .25) + .5;
    }
    return out;
}