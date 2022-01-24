#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct TYPE_6__ {int /*<<< orphan*/  mnt_kern_flag; } ;
struct TYPE_5__ {TYPE_3__* v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNTK_SWAP_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void
FUNC2(vnode_t vp)
{
	FUNC0(vp->v_mount);
	vp->v_mount->mnt_kern_flag |= MNTK_SWAP_MOUNT;
	FUNC1(vp->v_mount);
}