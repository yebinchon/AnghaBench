#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_mkdir_args {int /*<<< orphan*/  a_dvp; struct vnode** a_vpp; struct vnode_attr* a_vap; struct componentname* a_cnp; } ;
struct vnode_attr {int /*<<< orphan*/  va_mode; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_nameptr; int /*<<< orphan*/  cn_context; } ;
struct TYPE_9__ {int /*<<< orphan*/  dn_mode; int /*<<< orphan*/  dn_gid; int /*<<< orphan*/  dn_uid; } ;
typedef  TYPE_1__ devnode_t ;
struct TYPE_10__ {TYPE_1__* de_dnp; } ;
typedef  TYPE_2__ devdirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEV_DIR ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int FUNC4 (TYPE_1__*,struct vnode**,struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 struct proc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct vnop_mkdir_args *ap)
        /*struct vnop_mkdir_args {
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
	int error = 0;
	devnode_t * dir_p;
	devdirent_t * nm_p;
	devnode_t * dev_p;
	struct vnode_attr *	vap = ap->a_vap;
	struct vnode * * vpp = ap->a_vpp;

	FUNC0();

	dir_p = FUNC2(ap->a_dvp);
	error = FUNC3(cnp->cn_nameptr, dir_p, DEV_DIR, 
			      NULL, NULL, NULL, &nm_p);
	if (error) {
	    goto failure;
	}
	dev_p = nm_p->de_dnp;
	dev_p->dn_uid = dir_p->dn_uid;
	dev_p->dn_gid = dir_p->dn_gid;
	dev_p->dn_mode = vap->va_mode;
	FUNC5(dev_p, dir_p);

	error = FUNC4(dev_p, vpp, p);
failure:
	FUNC1();

	return error;
}