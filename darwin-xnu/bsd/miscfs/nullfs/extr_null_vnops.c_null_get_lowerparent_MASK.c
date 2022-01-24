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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {scalar_t__ va_parentid; } ;
typedef  TYPE_1__* mount_t ;
typedef  int /*<<< orphan*/  ino64_t ;
struct TYPE_4__ {int mnt_kern_flag; } ;

/* Variables and functions */
 int ENOENT ; 
 int MNTK_PATH_FROM_ID ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_parentid ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(vnode_t lvp, vnode_t * dvpp, vfs_context_t ctx)
{
	int error = 0;
	struct vnode_attr va;
	mount_t mp  = FUNC6(lvp);
	vnode_t dvp = FUNC7(lvp);

	if (dvp) {
		error = FUNC4(dvp);
		goto end;
	}

	error = ENOENT;
	if (!(mp->mnt_kern_flag & MNTK_PATH_FROM_ID)) {
		goto end;
	}

	FUNC0(&va);
	FUNC2(&va, va_parentid);

	error = FUNC5(lvp, &va, ctx);

	if (error || !FUNC1(&va, va_parentid)) {
		goto end;
	}

	error = FUNC3(mp, (ino64_t)va.va_parentid, &dvp, ctx);

end:
	if (error == 0) {
		*dvpp = dvp;
	}
	return error;
}