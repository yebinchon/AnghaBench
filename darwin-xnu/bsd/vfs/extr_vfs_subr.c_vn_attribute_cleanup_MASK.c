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
typedef  int uint32_t ;
struct vnode_attr {int /*<<< orphan*/ * va_base_acl; int /*<<< orphan*/ * va_acl; } ;
typedef  int /*<<< orphan*/ * kauth_acl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VATTR_PREPARE_DEFAULTED_GID ; 
 int VATTR_PREPARE_DEFAULTED_MODE ; 
 int VATTR_PREPARE_DEFAULTED_UID ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_uid ; 

void
FUNC4(struct vnode_attr *vap, uint32_t defaulted_fields)
{
	/*
	 * If the caller supplied a filesec in vap, it has been replaced
	 * now by the post-inheritance copy.  We need to put the original back
	 * and free the inherited product.
	 */
	kauth_acl_t nacl, oacl;

	if (FUNC1(vap, va_acl)) {
		nacl = vap->va_acl;
		oacl = vap->va_base_acl;

		if (oacl)  {
			FUNC2(vap, va_acl, oacl);
			vap->va_base_acl = NULL;
		} else {
			FUNC0(vap, va_acl);
		}

		if (nacl != NULL) {
			FUNC3(nacl);
		}
	}

	if ((defaulted_fields & VATTR_PREPARE_DEFAULTED_MODE) != 0) {
		FUNC0(vap, va_mode);
	}
	if ((defaulted_fields & VATTR_PREPARE_DEFAULTED_GID) != 0) {
		FUNC0(vap, va_gid);
	}
	if ((defaulted_fields & VATTR_PREPARE_DEFAULTED_UID) != 0) {
		FUNC0(vap, va_uid);
	}

	return;
}