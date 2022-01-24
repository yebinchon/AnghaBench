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
struct vnop_mkdir_args {int /*<<< orphan*/ * a_vpp; int /*<<< orphan*/  a_vap; int /*<<< orphan*/  a_cnp; int /*<<< orphan*/  a_dvp; int /*<<< orphan*/  a_context; } ;
typedef  int /*<<< orphan*/ * nfsnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  NFDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int
FUNC3(
	struct vnop_mkdir_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_dvp;
		vnode_t *a_vpp;
		struct componentname *a_cnp;
		struct vnode_attr *a_vap;
		vfs_context_t a_context;
	} */ *ap)
{
	nfsnode_t np = NULL;
	int error;

	error = FUNC2(ap->a_context, FUNC1(ap->a_dvp), ap->a_cnp, ap->a_vap,
			NFDIR, NULL, &np);
	if (!error)
		*ap->a_vpp = FUNC0(np);
	return (error);
}