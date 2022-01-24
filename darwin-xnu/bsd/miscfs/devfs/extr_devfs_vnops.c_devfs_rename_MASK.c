#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct vnop_rename_args {struct componentname* a_fcnp; struct componentname* a_tcnp; struct vnode* a_fdvp; struct vnode* a_fvp; struct vnode* a_tdvp; struct vnode* a_tvp; } ;
struct vnode {scalar_t__ v_type; } ;
struct componentname {int cn_namelen; char* cn_nameptr; int cn_flags; } ;
struct TYPE_13__ {TYPE_3__* parent; } ;
struct TYPE_14__ {TYPE_1__ Dir; } ;
struct TYPE_15__ {scalar_t__ dn_type; int dn_links; TYPE_2__ dn_typeinfo; } ;
typedef  TYPE_3__ devnode_t ;
struct TYPE_16__ {int /*<<< orphan*/ * de_dnp; } ;
typedef  TYPE_4__ devdirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEVFS_UPDATE_CHANGE ; 
 int DEVMAXNAMESIZE ; 
 scalar_t__ DEV_DIR ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int ISDOTDOT ; 
 scalar_t__ VDIR ; 
 TYPE_3__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__**) ; 
 TYPE_4__* FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct vnop_rename_args *ap)
        /*struct vnop_rename_args  {
                struct vnode *a_fdvp; 
                struct vnode *a_fvp;  
                struct componentname *a_fcnp;
                struct vnode *a_tdvp;
                struct vnode *a_tvp;
                struct componentname *a_tcnp;
		vfs_context_t a_context;
        } */
{
	struct vnode *tvp = ap->a_tvp;
	struct vnode *tdvp = ap->a_tdvp;
	struct vnode *fvp = ap->a_fvp;
	struct vnode *fdvp = ap->a_fdvp;
	struct componentname *tcnp = ap->a_tcnp;
	struct componentname *fcnp = ap->a_fcnp;
	devnode_t *fp, *fdp, *tp, *tdp;
	devdirent_t *fnp,*tnp;
	int doingdirectory = 0;
	int error = 0;

	FUNC0();
	/*
	 * First catch an arbitrary restriction for this FS
	 */
	if (tcnp->cn_namelen > DEVMAXNAMESIZE) {
		error = ENAMETOOLONG;
		goto out;
	}

	/*
	 * assume that the names are null terminated as they
	 * are the end of the path. Get pointers to all our
	 * devfs structures.
	 */
	tdp = FUNC2(tdvp);
	fdp = FUNC2(fdvp);
	fp = FUNC2(fvp);

	fnp = FUNC4(fdp, fcnp->cn_nameptr);

	if (fnp == NULL) {
	        error = ENOENT;
		goto out;
	}
	tp = NULL;
	tnp = NULL;

	if (tvp) {
		tnp = FUNC4(tdp, tcnp->cn_nameptr);

		if (tnp == NULL) {
		        error = ENOENT;
			goto out;
		}
		tp = FUNC2(tvp);
	}
	
	/*
	 * Make sure that we don't try do something stupid
	 */
	if ((fp->dn_type) == DEV_DIR) {
		/*
		 * Avoid ".", "..", and aliases of "." for obvious reasons.
		 */
		if ((fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.') 
		    || (fcnp->cn_flags&ISDOTDOT) 
		    || (tcnp->cn_namelen == 1 && tcnp->cn_nameptr[0] == '.') 
		    || (tcnp->cn_flags&ISDOTDOT) 
		    || (tdp == fp )) {
			error = EINVAL;
			goto out;
		}
		doingdirectory++;
	}

	/*
	 * Don't allow renaming critical devfs devices
	 */
	if (FUNC6(fdvp, fcnp->cn_nameptr) ||
	    FUNC6(tdvp, tcnp->cn_nameptr)) {
		error = EINVAL;
		goto out;
	}

	/*
	 * If ".." must be changed (ie the directory gets a new
	 * parent) then the source directory must not be in the
	 * directory hierarchy above the target, as this would
	 * orphan everything below the source directory. Also
	 * the user must have write permission in the source so
	 * as to be able to change "..". 
	 */
	if (doingdirectory && (tdp != fdp)) {
		devnode_t * tmp, *ntmp;
		tmp = tdp;
		do {
			if(tmp == fp) {
				/* XXX unlock stuff here probably */
				error = EINVAL;
				goto out;
			}
			ntmp = tmp;
		} while ((tmp = tmp->dn_typeinfo.Dir.parent) != ntmp);
	}

	/***********************************
	 * Start actually doing things.... *
	 ***********************************/
	FUNC7(fp, DEVFS_UPDATE_CHANGE);

	/*
	 * Check if just deleting a link name.
	 */
	if (fvp == tvp) {
		if (fvp->v_type == VDIR) {
			error = EINVAL;
			goto out;
		}
		/* Release destination completely. */
		FUNC5(fnp);

		FUNC1();
		return 0;
	}
	/*
	 * 1) Bump link count while we're moving stuff
	 *    around.  If we crash somewhere before
	 *    completing our work,  too bad :)
	 */
	fp->dn_links++;
	/*
	 * If the target exists zap it (unless it's a non-empty directory)
	 * We could do that as well but won't
 	 */
	if (tp) {
		/*
		 * Target must be empty if a directory and have no links
		 * to it. Also, ensure source and target are compatible
		 * (both directories, or both not directories).
		 */
		if (( doingdirectory) && (tp->dn_links > 2)) {
		        error = ENOTEMPTY;
			goto bad;
		}
		FUNC5(tnp);
		tp = NULL;
	}
	FUNC3(tcnp->cn_nameptr,tdp,NULL,fp,&tnp);
	fnp->de_dnp = NULL;
	fp->dn_links--; /* one less link to it.. */

	FUNC5(fnp);
bad:
	fp->dn_links--; /* we added one earlier*/
out:
	FUNC1();
	return (error);
}