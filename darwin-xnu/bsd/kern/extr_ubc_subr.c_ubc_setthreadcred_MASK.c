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
typedef  int /*<<< orphan*/  thread_t ;
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct uthread {int uu_flag; int /*<<< orphan*/  uu_ucred; } ;
struct ubc_info {int /*<<< orphan*/  ui_ucred; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int UT_SETUID ; 
 struct uthread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 

int
FUNC7(struct vnode *vp, proc_t p, thread_t thread)
{
	struct ubc_info *uip;
	kauth_cred_t credp;
	struct uthread  *uthread = FUNC2(thread);

	if (!FUNC1(vp))
		return (1); 

	FUNC5(vp);

	uip = vp->v_ubcinfo;
	credp = uip->ui_ucred;

	if (!FUNC0(credp)) {
		/* use per-thread cred, if assumed identity, else proc cred */
		if (uthread == NULL || (uthread->uu_flag & UT_SETUID) == 0) {
			uip->ui_ucred = FUNC3(p);
		} else {
			uip->ui_ucred = uthread->uu_ucred;
			FUNC4(uip->ui_ucred);
		}
	} 
	FUNC6(vp);

	return (0);
}