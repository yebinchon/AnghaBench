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
struct vnop_remove_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct componentname {char* cn_nameptr; int cn_namelen; int cn_flags; } ;
struct TYPE_5__ {scalar_t__ dn_type; int dn_links; } ;
typedef  TYPE_1__ devnode_t ;
typedef  int /*<<< orphan*/  devdirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int DEVFS_UPDATE_CHANGE ; 
 int DEVFS_UPDATE_MOD ; 
 scalar_t__ DEV_DIR ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int ISDOTDOT ; 
 TYPE_1__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (struct vnode*,char*) ; 

__attribute__((used)) static int
FUNC7(struct vnop_remove_args *ap)
        /* struct vnop_remove_args  {
                struct vnode *a_dvp;
                struct vnode *a_vp;
                struct componentname *a_cnp;
        } */ 
{
	struct vnode *vp = ap->a_vp;
	struct vnode *dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	devnode_t *  tp;
	devnode_t *  tdp;
	devdirent_t * tnp;
	int doingdirectory = 0;
	int error = 0;

	/*
	 * assume that the name is null terminated as they
	 * are the end of the path. Get pointers to all our
	 * devfs structures.
	 */

	FUNC0();

	tp = FUNC2(vp);
	tdp = FUNC2(dvp);


	tnp = FUNC3(tdp, cnp->cn_nameptr);

	if (tnp == NULL) {
	        error = ENOENT;
		goto abort;
	}

	/*
	 * Don't allow removing critical devfs devices
	 */
	if (FUNC6(dvp, cnp->cn_nameptr)) {
		error = EINVAL;
		goto abort;
}

	/*
	 * Make sure that we don't try do something stupid
	 */
	if ((tp->dn_type) == DEV_DIR) {
		/*
		 * Avoid ".", "..", and aliases of "." for obvious reasons.
		 */
		if ( (cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.') 
		    || (cnp->cn_flags&ISDOTDOT) ) {
			error = EINVAL;
			goto abort;
		}
		doingdirectory++;
	}

	/***********************************
	 * Start actually doing things.... *
	 ***********************************/
	FUNC5(tdp, DEVFS_UPDATE_CHANGE | DEVFS_UPDATE_MOD);

	/*
	 * Target must be empty if a directory and have no links
	 * to it. Also, ensure source and target are compatible
	 * (both directories, or both not directories).
	 */
	if (( doingdirectory) && (tp->dn_links > 2)) {
	    error = ENOTEMPTY;
	    goto abort;
	}
	FUNC4(tnp);
abort:
	FUNC1();

	return (error);
}