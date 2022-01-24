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
struct vnode_trace_paths_context {int count; scalar_t__ path; } ;
struct vnode {int dummy; } ;

/* Variables and functions */
 int KDBG_VFS_LOOKUP_FLAG_LOOKUP ; 
 int KDBG_VFS_LOOKUP_FLAG_NOPROCFILT ; 
 int VNODE_RETURNED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct vnode*,char*,int*) ; 

__attribute__((used)) static int FUNC3(struct vnode *vp, void *arg) {
	int len, rv;
	struct vnode_trace_paths_context *ctx;

	ctx = arg;

	len = sizeof (ctx->path);
	rv = FUNC2(vp, (char *)ctx->path, &len);
	/* vn_getpath() NUL-terminates, and len includes the NUL */

	if (!rv) {
		FUNC0(ctx->path, len, vp,
				KDBG_VFS_LOOKUP_FLAG_LOOKUP | KDBG_VFS_LOOKUP_FLAG_NOPROCFILT);

		if (++(ctx->count) == 1000) {
			FUNC1();
			ctx->count = 0;
		}
	}

	return VNODE_RETURNED;
}