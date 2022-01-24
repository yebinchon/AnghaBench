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
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {int /*<<< orphan*/  ui_ucred; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

int
FUNC5(struct vnode *vp, proc_t p)
{
	struct ubc_info *uip;
	kauth_cred_t credp;

	/* If there is no ubc_info, deny the operation */
	if ( !FUNC1(vp))
		return (0); 

	/*
	 * Check to see if there is already a credential reference in the
	 * ubc_info; if there is not, take one on the supplied credential.
	 */
	FUNC3(vp);
	uip = vp->v_ubcinfo;
	credp = uip->ui_ucred;
	if (!FUNC0(credp)) {
		uip->ui_ucred = FUNC2(p);
	} 
	FUNC4(vp);

	return (1);
}