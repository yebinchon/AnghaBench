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
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  pmap_initialized ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

boolean_t
FUNC3(ppnum_t pn)
{
	FUNC1(pn != vm_page_fictitious_addr);

	if (!pmap_initialized)
		return TRUE;

	if (pn == vm_page_guard_addr)
		return FALSE;

	if (!FUNC0(FUNC2(pn)))
		return FALSE;

	return TRUE;
}