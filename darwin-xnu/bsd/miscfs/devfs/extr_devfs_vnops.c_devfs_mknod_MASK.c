#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_mknod_args {struct vnode** a_vpp; struct vnode_attr* a_vap; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode_attr {scalar_t__ va_type; int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_rdev; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_nameptr; int /*<<< orphan*/  cn_context; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ devnode_type_t ;
struct TYPE_10__ {int /*<<< orphan*/  dn_mode; int /*<<< orphan*/  dn_gid; int /*<<< orphan*/  dn_uid; } ;
typedef  TYPE_2__ devnode_t ;
struct TYPE_11__ {TYPE_2__* de_dnp; } ;
typedef  TYPE_3__ devdirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEV_BDEV ; 
 int /*<<< orphan*/  DEV_CDEV ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 TYPE_2__* FUNC3 (struct vnode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int FUNC5 (TYPE_2__*,struct vnode**,struct proc*) ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_uid ; 
 struct proc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct vnop_mknod_args *ap)
        /* struct vnop_mknod_args {
		struct vnode *a_dvp;
		struct vnode **a_vpp;
		struct componentname *a_cnp;
		struct vnode_attr *a_vap;
		vfs_context_t a_context;
	} */
{
    	struct componentname * cnp = ap->a_cnp;
	vfs_context_t ctx = cnp->cn_context;
	struct proc *p = FUNC6(ctx);
	devnode_t *	dev_p;
	devdirent_t *	devent;
	devnode_t *	dir_p;	/* devnode for parent directory */
    	struct vnode * 	dvp = ap->a_dvp;
	int 		error = 0;
	devnode_type_t	typeinfo;
	struct vnode_attr *	vap = ap->a_vap;
	struct vnode ** vpp = ap->a_vpp;

	*vpp = NULL;
	if (!(vap->va_type == VBLK) && !(vap->va_type == VCHR)) {
	        return (EINVAL); /* only support mknod of special files */
	}
	typeinfo.dev = vap->va_rdev;

	FUNC0();

	dir_p = FUNC3(dvp);

	error = FUNC4(cnp->cn_nameptr, dir_p, 
			      (vap->va_type == VBLK) ? DEV_BDEV : DEV_CDEV,
			      &typeinfo, NULL, NULL, &devent);
	if (error) {
	        goto failure;
	}
	dev_p = devent->de_dnp;
	error = FUNC5(dev_p, vpp, p);
	if (error)
	        goto failure;
	dev_p->dn_uid = vap->va_uid;
	dev_p->dn_gid = vap->va_gid;
	dev_p->dn_mode = vap->va_mode;
	FUNC2(vap, va_uid);
	FUNC2(vap, va_gid);
	FUNC2(vap, va_mode);
failure:
	FUNC1();

	return (error);
}