#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode_attr {int va_vaflags; scalar_t__ va_type; int /*<<< orphan*/ * va_base_acl; int /*<<< orphan*/ * va_acl; } ;
typedef  int /*<<< orphan*/ * kauth_acl_t ;
struct TYPE_6__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int VA_NOAUTH ; 
 int VA_NOINHERIT ; 
 scalar_t__ VDIR ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_acl ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct vnode_attr*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(vnode_t dvp, struct vnode_attr *vap, uint32_t *defaulted_fieldsp, vfs_context_t ctx)
{
	kauth_acl_t nacl = NULL, oacl = NULL;
	int error;

	/*
	 * Handle ACL inheritance.
	 */
	if (!(vap->va_vaflags & VA_NOINHERIT) && FUNC5(dvp->v_mount)) {
		/* save the original filesec */
		if (FUNC2(vap, va_acl)) {
			oacl = vap->va_acl;
		}

		vap->va_acl = NULL;
		if ((error = FUNC4(dvp,
			 oacl,
			 &nacl,
			 vap->va_type == VDIR,
			 ctx)) != 0) {
			FUNC0("%p    CREATE - error %d processing inheritance", dvp, error);
			return(error);
		}

		/*
		 * If the generated ACL is NULL, then we can save ourselves some effort
		 * by clearing the active bit.
		 */
		if (nacl == NULL) {
			FUNC1(vap, va_acl);
		} else {
			vap->va_base_acl = oacl;
			FUNC3(vap, va_acl, nacl);
		}
	}
	
	error = FUNC7(dvp, vap, (vap->va_vaflags & VA_NOAUTH), defaulted_fieldsp, ctx);
	if (error) {
		FUNC6(vap, *defaulted_fieldsp);
	} 

	return error;
}