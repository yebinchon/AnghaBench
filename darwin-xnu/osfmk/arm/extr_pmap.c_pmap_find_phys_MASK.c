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
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pmap_paddr_t ;
typedef  int /*<<< orphan*/  addr64_t ;
struct TYPE_2__ {scalar_t__ map; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ kernel_pmap ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ not_in_kdp ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

ppnum_t
FUNC6(
	pmap_t pmap,
	addr64_t va)
{
	pmap_paddr_t	pa=0;

	if (pmap == kernel_pmap)
		pa = FUNC1(va);
	else if ((FUNC0()->map) && (pmap == FUNC5(FUNC0()->map)))
		pa = FUNC2(va);

	if (pa) return (ppnum_t)(pa >> PAGE_SHIFT);

	if (not_in_kdp) {
		return FUNC3(pmap, va);
	} else {
		return FUNC4(pmap, va);
	}
}