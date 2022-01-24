#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {double resolution; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ ns_time; } ;

/* Variables and functions */
 TYPE_2__ _glfw ; 
 scalar_t__ FUNC0 () ; 

void FUNC1(double time)
{
    _glfw.ns_time.base = FUNC0() -
        (uint64_t) (time / _glfw.ns_time.resolution);
}