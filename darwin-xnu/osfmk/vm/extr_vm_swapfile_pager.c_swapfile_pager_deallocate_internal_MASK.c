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
typedef  TYPE_2__* swapfile_pager_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {scalar_t__ mo_control; } ;
struct TYPE_9__ {int ref_count; TYPE_1__ swp_pgr_hdr; } ;

/* Variables and functions */
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ; 
 TYPE_2__* SWAPFILE_PAGER_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  swapfile_pager_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(
	swapfile_pager_t	pager,
	boolean_t		locked)
{
	if (! locked) {
		FUNC1(&swapfile_pager_lock);
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
		FUNC2(&swapfile_pager_lock);
		FUNC5(pager);
	} else if (pager->ref_count == 0) {
		/*
		 * Dropped the existence reference;  the memory object has
		 * been terminated.  Do some final cleanup and release the
		 * pager structure.
		 */
		FUNC2(&swapfile_pager_lock);
		if (pager->swp_pgr_hdr.mo_control != MEMORY_OBJECT_CONTROL_NULL) {
			FUNC3(pager->swp_pgr_hdr.mo_control);
			pager->swp_pgr_hdr.mo_control = MEMORY_OBJECT_CONTROL_NULL;
		}
		FUNC0(pager, sizeof (*pager));
		pager = SWAPFILE_PAGER_NULL;
	} else {
		/* there are still plenty of references:  keep going... */
		FUNC2(&swapfile_pager_lock);
	}

	/* caution: lock is not held on return... */
}