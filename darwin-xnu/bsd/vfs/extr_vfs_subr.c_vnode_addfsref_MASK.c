#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
struct vnode {int dummy; } ;
struct TYPE_6__ {struct vnode** tqe_prev; } ;
struct TYPE_7__ {int v_lflag; TYPE_1__ v_freelist; } ;

/* Variables and functions */
 int VNAMED_FSHASH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int
FUNC3(vnode_t vp)
{
	FUNC1(vp);
	if (vp->v_lflag & VNAMED_FSHASH)
		FUNC0("add_fsref: vp already has named reference");
	if ((vp->v_freelist.tqe_prev != (struct vnode **)0xdeadb))
	        FUNC0("addfsref: vp on the free list\n");
	vp->v_lflag |= VNAMED_FSHASH;
	FUNC2(vp);
	return(0);

}