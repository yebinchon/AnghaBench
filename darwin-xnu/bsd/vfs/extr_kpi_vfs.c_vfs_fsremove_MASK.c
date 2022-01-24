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
typedef  scalar_t__ vfstable_t ;
struct vfstable {scalar_t__ vfc_refcount; void* vfc_descptr; scalar_t__ vfc_descsize; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct vfstable*) ; 

errno_t  
FUNC4(vfstable_t handle)
{
	struct vfstable * vfstbl =  (struct vfstable *)handle;
	void *old_desc = NULL;
	errno_t err;
	
	/* Preflight check for any mounts */
	FUNC1();
	if ( vfstbl->vfc_refcount != 0 ) {
		FUNC2();
		return EBUSY;
	}
	
	/*
	 * save the old descriptor; the free cannot occur unconditionally,
	 * since vfstable_del() may fail.
	 */
	if (vfstbl->vfc_descptr && vfstbl->vfc_descsize) {
		old_desc = vfstbl->vfc_descptr;
	}
	err = FUNC3(vfstbl);

	FUNC2();

	/* free the descriptor if the delete was successful */
	if (err == 0 && old_desc) {
		FUNC0(old_desc, M_TEMP);
	}

	return(err);
}