#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/ * kauth_cred_t ;
struct TYPE_4__ {int /*<<< orphan*/ * vc_ucred; } ;
struct TYPE_3__ {scalar_t__ aq_hiwater; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CLOSE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ audit_ctx ; 
 int /*<<< orphan*/  audit_drain_cv ; 
 int /*<<< orphan*/  audit_drain_kar ; 
 int /*<<< orphan*/  audit_enabled ; 
 scalar_t__ audit_file_rotate_wait ; 
 int /*<<< orphan*/  audit_mtx ; 
 int /*<<< orphan*/  audit_q ; 
 int audit_q_draining ; 
 scalar_t__ audit_q_len ; 
 TYPE_1__ audit_qctrl ; 
 struct vnode* audit_vp ; 
 int /*<<< orphan*/  audit_watermark_cv ; 
 int /*<<< orphan*/  audit_worker_cv ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  k_q ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 

void
FUNC14(kauth_cred_t cred, struct vnode *vp)
{
	kauth_cred_t old_audit_cred;
	struct vnode *old_audit_vp;

	FUNC2((cred != NULL && vp != NULL) || (cred == NULL && vp == NULL),
	    ("audit_rotate_vnode: cred %p vp %p", cred, vp));


	FUNC7(&audit_mtx);
	if (audit_enabled && (NULL == vp)) {
		/* Auditing is currently enabled but will be disabled. */

		/*
		 * Disable auditing now so nothing more is added while the
		 * audit worker thread is draining the audit record queue.
		 */
		audit_enabled = 0;

		/*
		 * Drain the auditing queue by inserting a drain record at the
		 * end of the queue and waiting for the audit worker thread
		 * to find this record and signal that it is done before
		 * we close the audit trail.
		 */
		audit_q_draining = 1;
		while (audit_q_len >= audit_qctrl.aq_hiwater)
			FUNC5(&audit_watermark_cv, &audit_mtx);
		FUNC3(&audit_q, &audit_drain_kar, k_q);
		audit_q_len++;
		FUNC4(&audit_worker_cv);
	}

	/* If the audit queue is draining then wait here until it's done. */
	while (audit_q_draining)
		FUNC5(&audit_drain_cv, &audit_mtx);
	FUNC8(&audit_mtx);


	/*
	 * Rotate the vnode/cred, and clear the rotate flag so that we will
	 * send a rotate trigger if the new file fills.
	 */
	FUNC0();
	old_audit_cred = audit_ctx.vc_ucred;
	old_audit_vp = audit_vp;
	audit_ctx.vc_ucred = cred;
	audit_vp = vp;
	audit_file_rotate_wait = 0;
	audit_enabled = (audit_vp != NULL);
	FUNC1();

	/*
	 * If there was an old vnode/credential, close and free.
	 */
	if (old_audit_vp != NULL) {
		if (FUNC12(old_audit_vp) == 0) {
			FUNC11(old_audit_vp, AUDIT_CLOSE_FLAGS,
			    FUNC10());
			FUNC13(old_audit_vp);
		} else
			FUNC9("audit_rotate_vnode: Couldn't close "
			    "audit file.\n");
		FUNC6(&old_audit_cred);
	}
}