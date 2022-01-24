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
typedef  int /*<<< orphan*/  ppnum_t ;

/* Variables and functions */
 int /*<<< orphan*/  PP_ATTR_MODIFIED ; 
 int /*<<< orphan*/  PP_ATTR_REFERENCED ; 
 unsigned int VM_MEM_MODIFIED ; 
 unsigned int VM_MEM_REFERENCED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int
FUNC1(
	ppnum_t pn)
{
	return (((FUNC0(pn, PP_ATTR_MODIFIED)) ? VM_MEM_MODIFIED : 0)
		| ((FUNC0(pn, PP_ATTR_REFERENCED)) ? VM_MEM_REFERENCED : 0));
}