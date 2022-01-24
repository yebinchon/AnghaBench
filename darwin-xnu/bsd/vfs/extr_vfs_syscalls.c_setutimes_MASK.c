#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {int /*<<< orphan*/  va_vaflags; } ;
struct timespec {int dummy; } ;
typedef  scalar_t__ kauth_action_t ;
struct TYPE_9__ {int v_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ,struct timespec const) ; 
 int /*<<< orphan*/  VA_UTIMES_NULL ; 
 int VISNAMEDSTREAM ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,struct timespec const,struct timespec const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,struct timespec const,struct timespec const) ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_modify_time ; 
 int FUNC5 (TYPE_1__*,struct vnode_attr*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnpath ; 

__attribute__((used)) static int
FUNC8(vfs_context_t ctx, vnode_t vp, const struct timespec *ts,
	int nullflag)
{
	int error;
	struct vnode_attr va;
	kauth_action_t action;

	FUNC0(vnpath, vp, ARG_VNODE1);

	FUNC1(&va);
	FUNC2(&va, va_access_time, ts[0]);
	FUNC2(&va, va_modify_time, ts[1]);
	if (nullflag)
		va.va_vaflags |= VA_UTIMES_NULL;

#if NAMEDSTREAMS
	/* utimes calls are not allowed for resource forks. */
	if (vp->v_flag & VISNAMEDSTREAM) {
		error = EPERM;
		goto out;
	}
#endif

#if CONFIG_MACF
	error = mac_vnode_check_setutimes(ctx, vp, ts[0], ts[1]);
	if (error)
		goto out;
#endif
	if ((error = FUNC5(vp, &va, &action, ctx)) != 0) {
		if (!nullflag && error == EACCES)
			error = EPERM;
		goto out;
	}

	/* since we may not need to auth anything, check here */
	if ((action != 0) && ((error = FUNC6(vp, NULL, action, ctx)) != 0)) {
		if (!nullflag && error == EACCES)
			error = EPERM;
		goto out;
	}
	error = FUNC7(vp, &va, ctx);

#if CONFIG_MACF
	if (error == 0)
		mac_vnode_notify_setutimes(ctx, vp, ts[0], ts[1]);
#endif

out:
	return error;
}