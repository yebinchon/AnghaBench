#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnop_symlink_args {int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_vpp; int /*<<< orphan*/  a_target; TYPE_2__* a_vap; TYPE_1__* a_cnp; int /*<<< orphan*/  a_dvp; } ;
struct TYPE_7__ {int /*<<< orphan*/  de_dnp; } ;
typedef  TYPE_3__ devdirent_t ;
struct TYPE_6__ {int /*<<< orphan*/  va_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vnop_symlink_args *ap)
        /*struct vnop_symlink_args {
                struct vnode *a_dvp;
                struct vnode **a_vpp;
                struct componentname *a_cnp;
                struct vnode_attr *a_vap;
                char *a_target;
		vfs_context_t a_context;
        } */
{
	int error;
	devdirent_t *newent;

	FUNC0();
	error = FUNC4(FUNC2(ap->a_dvp), ap->a_cnp->cn_nameptr, ap->a_vap->va_mode, ap->a_target, &newent);
	
	if (error == 0) {
		error = FUNC3(newent->de_dnp, ap->a_vpp, FUNC5(ap->a_context));
	}

	FUNC1();

	return error;

}