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
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_filesec_t ;

/* Variables and functions */
 int KAUTH_VNODE_READ_ATTRIBUTES ; 
 int KAUTH_VNODE_READ_SECURITY ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*) ; 
 int FUNC1 (struct vnode*,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC3(struct vnode *vp, void *sb, kauth_filesec_t *xsec, int isstat64, vfs_context_t ctx)
{
	int error;

#if CONFIG_MACF
	error = mac_vnode_check_stat(ctx, NOCRED, vp);
	if (error)
		return (error);
#endif

	/* authorize */
	if ((error = FUNC2(vp, NULL, KAUTH_VNODE_READ_ATTRIBUTES | KAUTH_VNODE_READ_SECURITY, ctx)) != 0)
		return(error);

	/* actual stat */
	return(FUNC1(vp, sb, xsec, isstat64, ctx, NOCRED));
}