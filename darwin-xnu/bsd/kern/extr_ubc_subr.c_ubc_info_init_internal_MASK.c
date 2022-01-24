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
typedef  TYPE_1__* vnode_t ;
struct ubc_info {scalar_t__ ui_flags; scalar_t__ ui_size; void* ui_control; void* ui_pager; TYPE_1__* ui_vnode; int /*<<< orphan*/  ui_ucred; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  memory_object_size_t ;
typedef  void* memory_object_control_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_5__ {int /*<<< orphan*/  v_lflag; struct ubc_info* v_ubcinfo; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ubc_info* UBC_INFO_NULL ; 
 int /*<<< orphan*/  UI_HASOBJREF ; 
 int /*<<< orphan*/  UI_HASPAGER ; 
 scalar_t__ UI_INITED ; 
 scalar_t__ UI_NONE ; 
 int /*<<< orphan*/  VNAMED_UBC ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ubc_info_zone ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,void*) ; 
 int FUNC8 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(vnode_t vp, int withfsize, off_t filesize)
{
	struct ubc_info	*uip;
	void *  pager;
	int error = 0;
	kern_return_t kret;
	memory_object_control_t control;

	uip = vp->v_ubcinfo;

	/*
	 * If there is not already a ubc_info attached to the vnode, we
	 * attach one; otherwise, we will reuse the one that's there.
	 */
	if (uip == UBC_INFO_NULL) {

		uip = (struct ubc_info *) FUNC9(ubc_info_zone);
		FUNC2((char *)uip, sizeof(struct ubc_info));

		uip->ui_vnode = vp;
		uip->ui_flags = UI_INITED;
		uip->ui_ucred = NOCRED;
	}
	FUNC1(uip->ui_flags != UI_NONE);
	FUNC1(uip->ui_vnode == vp);

	/* now set this ubc_info in the vnode */
	vp->v_ubcinfo = uip;

	/*
	 * Allocate a pager object for this vnode
	 *
	 * XXX The value of the pager parameter is currently ignored.
	 * XXX Presumably, this API changed to avoid the race between
	 * XXX setting the pager and the UI_HASPAGER flag.
	 */
	pager = (void *)FUNC7(vp, uip->ui_pager);
	FUNC1(pager);

	/*
	 * Explicitly set the pager into the ubc_info, after setting the
	 * UI_HASPAGER flag.
	 */
	FUNC0(uip->ui_flags, UI_HASPAGER);
	uip->ui_pager = pager;

	/*
	 * Note: We can not use VNOP_GETATTR() to get accurate
	 * value of ui_size because this may be an NFS vnode, and
	 * nfs_getattr() can call vinvalbuf(); if this happens,
	 * ubc_info is not set up to deal with that event.
	 * So use bogus size.
	 */

	/*
	 * create a vnode - vm_object association
	 * memory_object_create_named() creates a "named" reference on the
	 * memory object we hold this reference as long as the vnode is
	 * "alive."  Since memory_object_create_named() took its own reference
	 * on the vnode pager we passed it, we can drop the reference
	 * vnode_pager_setup() returned here.
	 */
	kret = FUNC3(pager,
		(memory_object_size_t)uip->ui_size, &control);
	FUNC6(pager); 
	if (kret != KERN_SUCCESS)
		FUNC4("ubc_info_init: memory_object_create_named returned %d", kret);

	FUNC1(control);
	uip->ui_control = control;	/* cache the value of the mo control */
	FUNC0(uip->ui_flags, UI_HASOBJREF);	/* with a named reference */

	if (withfsize == 0) {
		/* initialize the size */
		error = FUNC8(vp, &uip->ui_size, FUNC5());
		if (error)
			uip->ui_size = 0;
	} else {
		uip->ui_size = filesize;
	}
	vp->v_lflag |= VNAMED_UBC;	/* vnode has a named ubc reference */

	return (error);
}