#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct TYPE_11__ {int v_flag; } ;

/* Variables and functions */
 int EJUSTRETURN ; 
 int ENOATTR ; 
 int ENOTSUP ; 
 int EPERM ; 
 int /*<<< orphan*/  KAUTH_VNODE_WRITE_EXTATTRIBUTES ; 
 int MNT_MULTILABEL ; 
 int VISNAMEDSTREAM ; 
 int FUNC0 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ) ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (char const*) ; 

int
FUNC10(vnode_t vp, const char * name, int options, vfs_context_t context)
{
	int error;

	if (!FUNC1(vp)) {
		return (EPERM);
	}
#if NAMEDSTREAMS
	/* removexattr calls are not allowed for streams. */
	if (vp->v_flag & VISNAMEDSTREAM) {
		error = EPERM;
		goto out;
	}
#endif
	if ((error = FUNC9(name))) {
		return (error);
	}
	if (!(options & XATTR_NOSECURITY)) {
#if CONFIG_MACF
		error = mac_vnode_check_deleteextattr(context, vp, name);
		if (error)
			goto out;
#endif /* MAC */
		error = FUNC7(vp, NULL, KAUTH_VNODE_WRITE_EXTATTRIBUTES, context);
		if (error)
			goto out;
	}
	error = FUNC0(vp, name, options, context);
	if (error == ENOTSUP && !(options & XATTR_NODEFAULT)) {
		/*
		 * A filesystem may keep some EAs natively and return ENOTSUP for others.
		 */
		error = FUNC2(vp, name, options, context);
#ifdef DUAL_EAS
	} else if (error == EJUSTRETURN) {
		/*
		 * EJUSTRETURN is from a filesystem which keeps this xattr natively as well
		 * as in a dot-underscore file.  EJUSTRETURN means the filesytem did remove
		 * a native xattr, so failure to find it in a DU file during
		 * default_removexattr should not be considered an error.
		 */
		error = default_removexattr(vp, name, options, context);
		if (error == ENOATTR)
			error = 0;
#endif /* DUAL_EAS */
	}
#if CONFIG_MACF
	if ((error == 0) && !(options & XATTR_NOSECURITY)) {
		mac_vnode_notify_deleteextattr(context, vp, name);
		if (vfs_flags(vnode_mount(vp)) & MNT_MULTILABEL)
			mac_vnode_label_update_extattr(vnode_mount(vp), vp, name);
	}
#endif
out:
	return (error);
}