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
 int /*<<< orphan*/ * FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC5(struct vnop_close_args *ap)
        /* struct vnop_close_args {
		struct vnode *a_vp;
		int  a_fflag;
		vfs_context_t a_context;
	} */
{
    	struct vnode *	    	vp = ap->a_vp;
	devnode_t * 	dnp;

	if (FUNC4(vp, 1)) {
	    FUNC0();
	    dnp = FUNC2(vp);
	    if (dnp)
	        FUNC3(dnp, 0);
	    FUNC1();
	}
	return (0);
}