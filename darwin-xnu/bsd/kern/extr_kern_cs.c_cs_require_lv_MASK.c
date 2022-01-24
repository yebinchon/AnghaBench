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
struct proc {int p_csflags; } ;

/* Variables and functions */
 int CS_REQUIRE_LV ; 
 scalar_t__ cs_library_val_enable ; 
 struct proc* FUNC0 () ; 

int
FUNC1(struct proc *p)
{
	
	if (cs_library_val_enable)
		return 1;

	if (p == NULL)
		p = FUNC0();
	
	if (p != NULL && (p->p_csflags & CS_REQUIRE_LV))
		return 1;
	
	return 0;
}