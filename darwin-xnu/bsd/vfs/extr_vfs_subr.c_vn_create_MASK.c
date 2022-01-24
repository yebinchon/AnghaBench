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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
struct vnode_attr {int va_type; int /*<<< orphan*/  va_acl; int /*<<< orphan*/  va_vaflags; } ;
struct componentname {int /*<<< orphan*/  cn_nameptr; } ;
struct nameidata {struct componentname ni_cnd; } ;
typedef  scalar_t__ errno_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ NULLVP ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 int /*<<< orphan*/  VA_NOAUTH ; 
 int /*<<< orphan*/  VA_NOINHERIT ; 
#define  VBLK 133 
#define  VCHR 132 
#define  VDIR 131 
#define  VFIFO 130 
 int /*<<< orphan*/  VNODE_LABEL_CREATE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*,struct componentname*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VN_CREATE_DOOPEN ; 
 int VN_CREATE_NOAUTH ; 
 int VN_CREATE_NOINHERIT ; 
 int VN_CREATE_NOLABEL ; 
#define  VREG 129 
#define  VSOCK 128 
 scalar_t__ kdebug_enable ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct componentname*) ; 
 scalar_t__ FUNC5 (scalar_t__,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode_attr*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,struct vnode_attr*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__*,struct nameidata*,struct vnode_attr*,int,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__*,struct nameidata*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct componentname*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,struct vnode_attr*,int /*<<< orphan*/ ) ; 

errno_t
FUNC15(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, struct vnode_attr *vap, uint32_t flags, int fmode, uint32_t *statusp, vfs_context_t ctx)
{
	errno_t	error, old_error;
	vnode_t vp = (vnode_t)0;
	boolean_t batched;
	struct componentname *cnp;
	uint32_t defaulted;

	cnp = &ndp->ni_cnd;
	error = 0;
	batched = FUNC5(dvp, ndp) ? TRUE : FALSE;

	FUNC0("%p    CREATE - '%s'", dvp, cnp->cn_nameptr);

	if (flags & VN_CREATE_NOINHERIT) 
		vap->va_vaflags |= VA_NOINHERIT;
	if (flags & VN_CREATE_NOAUTH) 
		vap->va_vaflags |= VA_NOAUTH;
	/*
	 * Handle ACL inheritance, initialize vap.
	 */
	error = FUNC8(dvp, vap, &defaulted, ctx);
	if (error) {
		return error;
	}

	if (vap->va_type != VREG && (fmode != 0 || (flags & VN_CREATE_DOOPEN) || statusp)) {
		FUNC6("Open parameters, but not a regular file.");
	}
	if ((fmode != 0) && ((flags & VN_CREATE_DOOPEN) == 0)) {
		FUNC6("Mode for open, but not trying to open...");
	}


	/*
	 * Create the requested node.
	 */
	switch(vap->va_type) {
	case VREG:
		error = FUNC9(dvp, vpp, ndp, vap, flags, fmode, statusp, ctx);
		break;
	case VDIR:
		error = FUNC10(dvp, vpp, ndp, vap, ctx);
		break;
	case VSOCK:
	case VFIFO:
	case VBLK:
	case VCHR:
		error = FUNC3(dvp, vpp, cnp, vap, ctx);
		break;
	default:
		FUNC6("vnode_create: unknown vtype %d", vap->va_type);
	}
	if (error != 0) {
		FUNC0("%p    CREATE - error %d returned by filesystem", dvp, error);
		goto out;
	}

	vp = *vpp;
	old_error = error;

#if CONFIG_MACF
	if (!(flags & VN_CREATE_NOLABEL)) {
		error = vnode_label(vnode_mount(vp), dvp, vp, cnp, VNODE_LABEL_CREATE, ctx);
		if (error)
			goto error;
	}
#endif

	/*
	 * If some of the requested attributes weren't handled by the VNOP,
	 * use our fallback code.
	 */
	if (!FUNC1(vap) && *vpp) {
		FUNC0("     CREATE - doing fallback with ACL %p", vap->va_acl);
		error = FUNC14(*vpp, vap, ctx);
	}
#if CONFIG_MACF
error:
#endif
	if ((error != 0) && (vp != (vnode_t)0)) {

		/* If we've done a compound open, close */
		if (batched && (old_error == 0) && (vap->va_type == VREG)) {
			FUNC2(vp, fmode, ctx);
		}

		/* Need to provide notifications if a create succeeded */
		if (!batched) {
			*vpp = (vnode_t) 0;
			FUNC13(vp);
			vp = NULLVP;
		}
	}

	/*
	 * For creation VNOPs, this is the equivalent of
	 * lookup_handle_found_vnode.
	 */
	if (kdebug_enable && *vpp)
		FUNC4(*vpp, cnp);

out:
	FUNC7(vap, defaulted);

	return(error);
}