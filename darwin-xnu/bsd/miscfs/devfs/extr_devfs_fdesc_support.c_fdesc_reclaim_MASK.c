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
struct vnop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/ * v_data; } ;
struct fdescnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fdescnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct fdescnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  fd_hash ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(struct vnop_reclaim_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct fdescnode *fd = FUNC2(vp);

	FUNC3();

	FUNC1(fd, fd_hash);
	FUNC0(vp->v_data, M_TEMP);
	vp->v_data = NULL;
	
	FUNC4();

	return (0);
}