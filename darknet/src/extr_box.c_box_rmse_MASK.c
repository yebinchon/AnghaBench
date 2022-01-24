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
struct TYPE_4__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ box ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 float FUNC1 (scalar_t__) ; 

float FUNC2(box a, box b)
{
    return FUNC1(FUNC0(a.x-b.x, 2) + 
                FUNC0(a.y-b.y, 2) + 
                FUNC0(a.w-b.w, 2) + 
                FUNC0(a.h-b.h, 2));
}