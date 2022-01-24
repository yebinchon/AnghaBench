#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vnop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dn_vn; } ;
typedef  TYPE_1__ devnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

__attribute__((used)) static int
FUNC5(struct vnop_reclaim_args *ap)
        /*struct vnop_reclaim_args {
		struct vnode *a_vp;
        } */
{
    struct vnode *	vp = ap->a_vp;
    devnode_t * 	dnp;
    
    FUNC0();

    dnp = FUNC2(vp);

    if (dnp) {
	/* If this is a cloning device, it didn't have a dn_vn anyway */
	dnp->dn_vn = NULL;
	FUNC4(vp);

	/* This could delete the node, if we are the last vnode */
	FUNC3(dnp);
    }
    FUNC1();

    return(0);
}