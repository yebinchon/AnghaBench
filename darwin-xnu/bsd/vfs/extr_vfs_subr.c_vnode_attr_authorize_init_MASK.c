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
struct vnode_attr {int dummy; } ;
typedef  int kauth_action_t ;

/* Variables and functions */
 int EINVAL ; 
 int KAUTH_VNODE_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_flags ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_type ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct vnode_attr *vap, struct vnode_attr *dvap,
    kauth_action_t action, vfs_context_t ctx)
{
	FUNC0(vap);
	FUNC1(vap, va_type);
	FUNC1(vap, va_mode);
	FUNC1(vap, va_flags);
	if (dvap) {
		FUNC0(dvap);
		if (action & KAUTH_VNODE_DELETE) {
			FUNC1(dvap, va_type);
			FUNC1(dvap, va_mode);
			FUNC1(dvap, va_flags);
		}
	} else if (action & KAUTH_VNODE_DELETE) {
		return (EINVAL);
	}

	if (!FUNC2(ctx)) {
		FUNC1(vap, va_uid);
		FUNC1(vap, va_gid);
		FUNC1(vap, va_acl);
		if (dvap && (action & KAUTH_VNODE_DELETE)) {
			FUNC1(dvap, va_uid);
			FUNC1(dvap, va_gid);
			FUNC1(dvap, va_acl);
		}
	}

	return (0);
}