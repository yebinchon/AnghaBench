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
struct vnop_close_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/  devnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnop_close_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spec_vnodeop_p ; 
 scalar_t__ FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnop_close ; 

__attribute__((used)) static int
FUNC7(struct vnop_close_args *ap)
        /* struct vnop_close_args {
		struct vnode *a_vp;
		int  a_fflag;
		vfs_context_t a_context;
	} */
{
    	struct vnode *	    	vp = ap->a_vp;
	devnode_t * 	dnp;

	if (FUNC6(vp, 0)) {
	    FUNC0();
	    dnp = FUNC4(vp);
	    if (dnp)
	        FUNC5(dnp, 0);
	    FUNC1();
	}

	return (FUNC2 (spec_vnodeop_p, FUNC3(vnop_close), ap));
}