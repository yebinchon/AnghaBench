#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_3__ {int v_lflag; int v_iocount; int /*<<< orphan*/  v_lock; int /*<<< orphan*/  v_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  PVFS ; 
 int VL_DRAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static errno_t 
FUNC3(vnode_t vp)
{
	
	if (vp->v_lflag & VL_DRAIN) {
		FUNC2("vnode_drain: recursive drain");
		return(ENOENT);
	}
	vp->v_lflag |= VL_DRAIN;
	vp->v_owner = FUNC0();

	while (vp->v_iocount > 1)
		FUNC1(&vp->v_iocount, &vp->v_lock, PVFS, "vnode_drain", NULL);

	vp->v_lflag &= ~VL_DRAIN;

	return(0);
}