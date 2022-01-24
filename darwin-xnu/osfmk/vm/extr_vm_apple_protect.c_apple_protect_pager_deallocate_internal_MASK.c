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
typedef  scalar_t__ boolean_t ;
typedef  TYPE_2__* apple_protect_pager_t ;
struct TYPE_8__ {scalar_t__ mo_control; } ;
struct TYPE_9__ {int ref_count; TYPE_1__ ap_pgr_hdr; } ;

/* Variables and functions */
 TYPE_2__* APPLE_PROTECT_PAGER_NULL ; 
 scalar_t__ FALSE ; 
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ; 
 scalar_t__ TRUE ; 
 int apple_protect_pager_cache_limit ; 
 int apple_protect_pager_count ; 
 int apple_protect_pager_count_mapped ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  apple_protect_pager_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void
FUNC7(
	apple_protect_pager_t	pager,
	boolean_t		locked)
{
	boolean_t	needs_trimming;
	int		count_unmapped;

	if (! locked) {
		FUNC4(&apple_protect_pager_lock);
	}

	count_unmapped = (apple_protect_pager_count - 
			  apple_protect_pager_count_mapped);
	if (count_unmapped > apple_protect_pager_cache_limit) {
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
		FUNC0(pager);
		/* the pager is all ours: no need for the lock now */
		FUNC5(&apple_protect_pager_lock);
		FUNC1(pager);
	} else if (pager->ref_count == 0) {
		/*
		 * Dropped the existence reference;  the memory object has
		 * been terminated.  Do some final cleanup and release the
		 * pager structure.
		 */
		FUNC5(&apple_protect_pager_lock);
		if (pager->ap_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL) {
			FUNC6(pager->ap_pgr_hdr.mo_control);
			pager->ap_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;
		}
		FUNC3(pager, sizeof (*pager));
		pager = APPLE_PROTECT_PAGER_NULL;
	} else {
		/* there are still plenty of references:  keep going... */
		FUNC5(&apple_protect_pager_lock);
	}

	if (needs_trimming) {
		FUNC2();
	}
	/* caution: lock is not held on return... */
}