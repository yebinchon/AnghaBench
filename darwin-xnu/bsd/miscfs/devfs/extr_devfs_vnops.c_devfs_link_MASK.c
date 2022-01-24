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
struct vnop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_mount; } ;
struct componentname {scalar_t__ cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  devnode_t ;
typedef  int /*<<< orphan*/  devdirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEVFS_UPDATE_CHANGE ; 
 scalar_t__ DEVMAXNAMESIZE ; 
 int ENAMETOOLONG ; 
 int EXDEV ; 
 int /*<<< orphan*/ * FUNC2 (struct vnode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct vnop_link_args *ap)
        /*struct vnop_link_args  {
                struct vnode *a_tdvp;
                struct vnode *a_vp;
                struct componentname *a_cnp;
		vfs_context_t a_context;
        } */ 
{
	struct vnode *vp = ap->a_vp;
	struct vnode *tdvp = ap->a_tdvp;
	struct componentname *cnp = ap->a_cnp;
	devnode_t * fp;
	devnode_t * tdp;
	devdirent_t * tnp;
	int error = 0;

	/*
	 * First catch an arbitrary restriction for this FS
	 */
	if (cnp->cn_namelen > DEVMAXNAMESIZE) {
		error = ENAMETOOLONG;
		goto out1;
	}

	/*
	 * Lock our directories and get our name pointers
	 * assume that the names are null terminated as they
	 * are the end of the path. Get pointers to all our
	 * devfs structures.
	 */
	/* can lookup dnode safely for tdvp outside of devfs lock as it is not aliased */
	tdp = FUNC2(tdvp);
	
	if (tdvp->v_mount != vp->v_mount) {
		return (EXDEV);
	}
	FUNC0();

	fp = FUNC2(vp);

	/***********************************
	 * Start actually doing things.... *
	 ***********************************/
	FUNC4(fp, DEVFS_UPDATE_CHANGE);

	if (!error) {
	    error = FUNC3(cnp->cn_nameptr, tdp, NULL, fp, &tnp);
	}
out1:
	FUNC1();

	return (error);
}