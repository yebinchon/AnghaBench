#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* shared_region_pager_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ mo_control; } ;
struct TYPE_9__ {int ref_count; TYPE_1__ sc_pgr_hdr; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ; 
 TYPE_2__* SHARED_REGION_PAGER_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int shared_region_pager_cache_limit ; 
 int shared_region_pager_count ; 
 int shared_region_pager_count_mapped ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  shared_region_pager_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(
	shared_region_pager_t	pager,
	boolean_t		locked)
{
	boolean_t	needs_trimming;
	int		count_unmapped;

	if (! locked) {
		FUNC1(&shared_region_pager_lock);
	}

	count_unmapped = (shared_region_pager_count -
			  shared_region_pager_count_mapped);
	if (count_unmapped > shared_region_pager_cache_limit) {
		/* we have too many unmapped pagers:  trim some */
		needs_trimming = TRUE;
	} else {
		needs_trimming = FALSE;
	}

	/* drop a reference on this pager */
	pager->ref_count--;

	if (pager->ref_count == 1) {
		/*
		 * Only the "named" reference is left, which means that
		 * no one is really holding on to this pager anymore.
		 * Terminate it.
		 */
		FUNC4(pager);
		/* the pager is all ours: no need for the lock now */
		FUNC2(&shared_region_pager_lock);
		FUNC5(pager);
	} else if (pager->ref_count == 0) {
		/*
		 * Dropped the existence reference;  the memory object has
		 * been terminated.  Do some final cleanup and release the
		 * pager structure.
		 */
		FUNC2(&shared_region_pager_lock);
		if (pager->sc_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL) {
			FUNC3(pager->sc_pgr_hdr.mo_control);
			pager->sc_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;
		}
		FUNC0(pager, sizeof (*pager));
		pager = SHARED_REGION_PAGER_NULL;
	} else {
		/* there are still plenty of references:  keep going... */
		FUNC2(&shared_region_pager_lock);
	}

	if (needs_trimming) {
		FUNC6();
	}
	/* caution: lock is not held on return... */
}