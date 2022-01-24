#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* cpu_clock_get ) () ;} ;

/* Variables and functions */
 TYPE_1__ plat_target ; 
 int FUNC0 () ; 

__attribute__((used)) static __inline int FUNC1(void)
{
	if (plat_target.cpu_clock_get)
		return plat_target.cpu_clock_get();
	return -1;
}