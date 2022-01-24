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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_VNODE ; 
 int /*<<< orphan*/  FSE_XATTR_REMOVED ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,char const*,int,int /*<<< orphan*/ ) ; 

int
FUNC4 (struct vnode *vp, const char *name)
{
	vfs_context_t ctx = FUNC1();
	int options = XATTR_NOSECURITY;
	int error;

	if (FUNC2(vp->v_mount))
		return (EROFS);

	error = FUNC3(vp, name, options, ctx);
#if CONFIG_FSE
	if (error == 0) {
		add_fsevent(FSE_XATTR_REMOVED, ctx,
		    FSE_ARG_VNODE, vp,
		    FSE_ARG_DONE);
	}
#endif

	return (error);
}