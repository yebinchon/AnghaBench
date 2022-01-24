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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {int dummy; } ;
typedef  int kauth_action_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int KAUTH_VNODE_NOIMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  va_flags ; 
 int FUNC5 (int /*<<< orphan*/ ,struct vnode_attr*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct vnode_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(vnode_t vp, int flags, vfs_context_t ctx)
{
	struct vnode_attr va;
 	kauth_action_t action;
	int error;

	FUNC0(&va);
	FUNC2(&va, va_flags, flags);

#if CONFIG_MACF
	error = mac_vnode_check_setflags(ctx, vp, flags);
	if (error)
		goto out;
#endif

	/* request authorisation, disregard immutability */
 	if ((error = FUNC5(vp, &va, &action, ctx)) != 0)
		goto out;
	/*
	 * Request that the auth layer disregard those file flags it's allowed to when
	 * authorizing this operation; we need to do this in order to be able to
	 * clear immutable flags.
	 */
	if (action && ((error = FUNC6(vp, NULL, action | KAUTH_VNODE_NOIMMUTABLE, ctx)) != 0))
		goto out;
	error = FUNC8(vp, &va, ctx);

#if CONFIG_MACF
	if (error == 0)
		mac_vnode_notify_setflags(ctx, vp, flags);
#endif

	if ((error == 0) && !FUNC1(&va, va_flags)) {
		error = ENOTSUP;
	}
out:
	FUNC7(vp);
	return(error);
}