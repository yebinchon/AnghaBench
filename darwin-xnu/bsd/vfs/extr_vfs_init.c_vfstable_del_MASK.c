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
struct vfstable {struct vfstable* vfc_next; struct vfstable* vfc_sysctl; int /*<<< orphan*/ * oid_name; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct vfstable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (struct vfstable*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int maxvfsslots ; 
 int /*<<< orphan*/  mnt_list_mtx_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  numregistered_fses ; 
 int /*<<< orphan*/  numused_vfsslots ; 
 int /*<<< orphan*/  FUNC5 (struct vfstable*) ; 
 struct vfstable* vfsconf ; 

int
FUNC6(struct vfstable  * vtbl)
{
	struct vfstable **vcpp;
	struct vfstable *vcdelp;

#if DEBUG
	lck_mtx_assert(mnt_list_mtx_lock, LCK_MTX_ASSERT_OWNED);
#endif /* DEBUG */

	/*
	 * Traverse the list looking for vtbl; if found, *vcpp
	 * will contain the address of the pointer to the entry to
	 * be removed.
	 */
	for( vcpp = &vfsconf; *vcpp; vcpp = &(*vcpp)->vfc_next) {
		if (*vcpp == vtbl)
			break;
	}

	if (*vcpp == NULL)
	   return(ESRCH);	/* vtbl not on vfsconf list */

	if ((*vcpp)->vfc_sysctl) {
		FUNC5((*vcpp)->vfc_sysctl);
		(*vcpp)->vfc_sysctl->oid_name = NULL;
		FUNC0((*vcpp)->vfc_sysctl, M_TEMP);
		(*vcpp)->vfc_sysctl = NULL;
	}

	/* Unlink entry */
	vcdelp = *vcpp;
	*vcpp = (*vcpp)->vfc_next;

	/*
	 * Is this an entry from our static table?  We find out by
	 * seeing if the pointer to the object to be deleted places
	 * the object in the address space containing the table (or not).
	 */
	if (vcdelp >= vfsconf && vcdelp < (vfsconf + maxvfsslots)) {	/* Y */
		/* Mark as empty for vfscon_add() */
		FUNC1(vcdelp, sizeof(struct vfstable));
		numregistered_fses--;
		numused_vfsslots--;
	} else {							/* N */
		/*
		 * This entry was dynamically allocated; we must free it;
		 * we would prefer to have just linked the caller's
		 * vfsconf onto our list, but it may not be persistent
		 * because of the previous (copying) implementation.
		 */
		numregistered_fses--;
		FUNC4();
		FUNC0(vcdelp, M_TEMP);
		FUNC3();
	}

#if DEBUG
	lck_mtx_assert(mnt_list_mtx_lock, LCK_MTX_ASSERT_OWNED);
#endif /* DEBUG */

	return(0);
}