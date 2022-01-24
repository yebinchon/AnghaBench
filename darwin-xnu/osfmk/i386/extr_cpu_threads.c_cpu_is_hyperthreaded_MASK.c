#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ thread_count; scalar_t__ core_count; } ;
typedef  TYPE_1__ i386_cpu_info_t ;
typedef  int boolean_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static boolean_t
FUNC1(void)
{
    i386_cpu_info_t	*cpuinfo;

    cpuinfo = FUNC0();
    return(cpuinfo->thread_count > cpuinfo->core_count);
}