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
typedef  int /*<<< orphan*/  vnode_t ;
struct vnop_reclaim_args {int /*<<< orphan*/  a_vp; } ;
typedef  scalar_t__ mockfs_fsnode_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct vnop_reclaim_args * ap)
{
	int rvalue;
	vnode_t vp;
	mockfs_fsnode_t fsnode;

	vp = ap->a_vp;
	fsnode = (mockfs_fsnode_t) FUNC1(vp);
	rvalue = FUNC0(fsnode);

	return rvalue;
}