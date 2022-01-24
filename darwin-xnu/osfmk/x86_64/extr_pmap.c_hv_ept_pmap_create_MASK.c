#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmap_t ;
struct TYPE_5__ {scalar_t__ pm_eptp; } ;

/* Variables and functions */
 int PMAP_CREATE_64BIT ; 
 int PMAP_CREATE_EPT ; 
 TYPE_1__* PMAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC5(void **ept_pmap, void **eptp)
{
	pmap_t p;

	if ((ept_pmap == NULL) || (eptp == NULL)) {
		return;
	}

	p = FUNC4(FUNC2(FUNC1()), 0, (PMAP_CREATE_64BIT | PMAP_CREATE_EPT));
	if (p == PMAP_NULL) {
		*ept_pmap = NULL;
		*eptp = NULL;
		return;
	}

	FUNC0(FUNC3(p));

	*ept_pmap = (void*)p;
	*eptp = (void*)(p->pm_eptp);
	return;
}