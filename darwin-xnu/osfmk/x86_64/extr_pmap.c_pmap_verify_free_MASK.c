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
typedef  TYPE_1__* pv_rooted_entry_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int boolean_t ;
struct TYPE_3__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PMAP_NULL ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_initialized ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

boolean_t
FUNC4(
		 ppnum_t pn)
{
	pv_rooted_entry_t	pv_h;
	int		pai;
	boolean_t	result;

	FUNC1(pn != vm_page_fictitious_addr);

	if (!pmap_initialized)
		return(TRUE);

	if (pn == vm_page_guard_addr)
		return TRUE;

	pai = FUNC3(pn);
	if (!FUNC0(pai))
		return(FALSE);
	pv_h = FUNC2(pn);
	result = (pv_h->pmap == PMAP_NULL);
	return(result);
}