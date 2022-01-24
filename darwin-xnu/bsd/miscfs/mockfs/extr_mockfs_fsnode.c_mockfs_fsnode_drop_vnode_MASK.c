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
typedef  int /*<<< orphan*/ * vnode_t ;
typedef  TYPE_2__* mockfs_mount_t ;
typedef  TYPE_3__* mockfs_fsnode_t ;
struct TYPE_7__ {int /*<<< orphan*/ * vp; TYPE_1__* mnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  mockfs_mnt_mtx; } ;
struct TYPE_5__ {scalar_t__ mnt_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(mockfs_fsnode_t fsnp)
{
	int rvalue;
	mockfs_mount_t mockfs_mnt;
	vnode_t vp;

	rvalue = 0;

	if (!fsnp) {
		rvalue = EINVAL;
		goto done;
	}

	mockfs_mnt = ((mockfs_mount_t) fsnp->mnt->mnt_data);
	FUNC0(&mockfs_mnt->mockfs_mnt_mtx);

	if (!(fsnp->vp)) {
		FUNC2("mock_fsnode_drop_vnode: target fsnode does not have an associated vnode");
	}

	vp = fsnp->vp;
	fsnp->vp = NULL;
	FUNC3(vp);

	FUNC1(&mockfs_mnt->mockfs_mnt_mtx);
done:
	return rvalue;
}