#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* uthread_t ;
typedef  scalar_t__ task_t ;
struct TYPE_24__ {scalar_t__* val; } ;
typedef  TYPE_4__ security_token_t ;
typedef  TYPE_5__* proc_t ;
typedef  TYPE_6__* posix_cred_t ;
typedef  TYPE_7__* kauth_cred_t ;
typedef  scalar_t__ host_priv_t ;
struct TYPE_28__ {int /*<<< orphan*/ * val; } ;
typedef  TYPE_8__ audit_token_t ;
struct TYPE_22__ {TYPE_1__* as_aia_p; } ;
struct TYPE_27__ {TYPE_2__ cr_audit; } ;
struct TYPE_26__ {int /*<<< orphan*/  cr_rgid; int /*<<< orphan*/  cr_ruid; int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct TYPE_25__ {int /*<<< orphan*/  p_idversion; int /*<<< orphan*/  p_pid; } ;
struct TYPE_23__ {int uu_flag; } ;
struct TYPE_21__ {int /*<<< orphan*/  ai_asid; int /*<<< orphan*/  ai_auid; } ;

/* Variables and functions */
 scalar_t__ HOST_PRIV_NULL ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 scalar_t__ KERN_SUCCESS ; 
 int UT_VFORK ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__,TYPE_8__,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_7__*) ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 TYPE_7__* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__**) ; 
 scalar_t__ FUNC11 (TYPE_7__*) ; 
 TYPE_6__* FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

int
FUNC14(proc_t p, void *t)
{
	security_token_t sec_token;
	audit_token_t    audit_token;
	kauth_cred_t my_cred;
	posix_cred_t my_pcred;
	host_priv_t host_priv;
	task_t task = t;

	/*
	 * Don't allow a vfork child to override the parent's token settings
	 * (since they share a task).  Instead, the child will just have to
	 * suffer along using the parent's token until the exec().  It's all
	 * undefined behavior anyway, right?
	 */
	if (task == FUNC1()) {
		uthread_t	 uthread;
		uthread = (uthread_t)FUNC3(FUNC2());
		if (uthread->uu_flag & UT_VFORK)
			return (1);
	}
		
	my_cred = FUNC9(p);
	my_pcred = FUNC12(my_cred);

	/* XXX mach_init doesn't have a p_ucred when it calls this function */
	if (FUNC0(my_cred)) {
		sec_token.val[0] = FUNC8(my_cred);
		sec_token.val[1] = FUNC7(my_cred);
	} else {
		sec_token.val[0] = 0;
		sec_token.val[1] = 0;
	}

	/*
	 * The current layout of the Mach audit token explicitly
	 * adds these fields.  But nobody should rely on such
	 * a literal representation.  Instead, the BSM library
	 * provides a function to convert an audit token into
	 * a BSM subject.  Use of that mechanism will isolate
	 * the user of the trailer from future representation
	 * changes.
	 */
	audit_token.val[0] = my_cred->cr_audit.as_aia_p->ai_auid;
	audit_token.val[1] = my_pcred->cr_uid;
	audit_token.val[2] = my_pcred->cr_gid;
	audit_token.val[3] = my_pcred->cr_ruid;
	audit_token.val[4] = my_pcred->cr_rgid;
	audit_token.val[5] = p->p_pid;
	audit_token.val[6] = my_cred->cr_audit.as_aia_p->ai_asid;
	audit_token.val[7] = p->p_idversion;

	host_priv = (sec_token.val[0]) ? HOST_PRIV_NULL : FUNC4();
#if CONFIG_MACF
	if (host_priv != HOST_PRIV_NULL && mac_system_check_host_priv(my_cred))
		host_priv = HOST_PRIV_NULL;
#endif
	FUNC10(&my_cred);

#if DEVELOPMENT || DEBUG
	/* 
	 * Update the pid an proc name for importance base if any
	 */
	task_importance_update_owner_info(task);
#endif

	return (FUNC6(FUNC5(),
					   task,
					   sec_token,
					   audit_token,
					   host_priv) != KERN_SUCCESS);
}