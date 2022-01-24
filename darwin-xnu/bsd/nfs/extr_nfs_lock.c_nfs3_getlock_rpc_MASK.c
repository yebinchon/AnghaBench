#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct nfs_lock_owner {int /*<<< orphan*/  nlo_pid; } ;
struct flock {scalar_t__ l_type; void* l_whence; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; int /*<<< orphan*/  l_pid; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  msgreq ;
struct TYPE_10__ {scalar_t__ l_type; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; int /*<<< orphan*/  l_pid; void* l_whence; } ;
struct TYPE_13__ {int lm_flags; TYPE_1__ lm_fl; int /*<<< orphan*/  lm_cred; int /*<<< orphan*/  lm_fh_len; int /*<<< orphan*/  lm_fh; int /*<<< orphan*/  lm_version; } ;
struct TYPE_12__ {int /*<<< orphan*/  lmr_errno; TYPE_4__ lmr_msg; } ;
struct TYPE_11__ {int /*<<< orphan*/  n_fhp; int /*<<< orphan*/  n_fhsize; } ;
typedef  TYPE_3__ LOCKD_MSG_REQUEST ;
typedef  TYPE_4__ LOCKD_MSG ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ F_UNLCK ; 
 int LOCKD_MSG_TEST ; 
 int /*<<< orphan*/  LOCKD_MSG_VERSION ; 
 struct nfsmount* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NFSX_V2FH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NFS_VER2 ; 
 void* SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(
	nfsnode_t np,
	struct nfs_lock_owner *nlop,
	struct flock *fl,
	uint64_t start,
	uint64_t end,
	vfs_context_t ctx)
{
	struct nfsmount *nmp;
	int error;
	LOCKD_MSG_REQUEST msgreq;
	LOCKD_MSG *msg;

	nmp = FUNC0(np);
	if (FUNC6(nmp))
		return (ENXIO);

	/* set up lock message request structure */
	FUNC3(&msgreq, sizeof(msgreq));
	msg = &msgreq.lmr_msg;
	msg->lm_version = LOCKD_MSG_VERSION;
	msg->lm_flags |= LOCKD_MSG_TEST;
	msg->lm_fh_len = (nmp->nm_vers == NFS_VER2) ? NFSX_V2FH : np->n_fhsize;
	FUNC2(np->n_fhp, msg->lm_fh, msg->lm_fh_len);
	FUNC4(FUNC8(ctx), &msg->lm_cred);

	msg->lm_fl.l_whence = SEEK_SET;
	msg->lm_fl.l_start = start;
	msg->lm_fl.l_len = FUNC1(start, end);
	msg->lm_fl.l_type = fl->l_type;
	msg->lm_fl.l_pid = nlop->nlo_pid;

	error = FUNC5(np, 0, &msgreq, 0, FUNC7(ctx));

	if (!error && (msg->lm_flags & LOCKD_MSG_TEST) && !msgreq.lmr_errno) {
		if (msg->lm_fl.l_type != F_UNLCK) {
			fl->l_type = msg->lm_fl.l_type;
			fl->l_pid = msg->lm_fl.l_pid;
			fl->l_start = msg->lm_fl.l_start;
			fl->l_len = msg->lm_fl.l_len;
			fl->l_whence = SEEK_SET;
		} else
			fl->l_type = F_UNLCK;
	}

	return (error);
}