#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
struct vnode {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct dqblk {scalar_t__* dqb_spare; void* dqb_id; void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curbytes; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
struct dquot {scalar_t__ dq_id; int /*<<< orphan*/  dq_flags; struct dqblk dq_dqb; TYPE_1__* dq_qfile; int /*<<< orphan*/  dq_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  qf_cred; struct vnode* qf_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dqblk*) ; 
 int /*<<< orphan*/  DQ_MOD ; 
 int EIO ; 
 struct vnode* NULLVP ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct dquot *dq)
{
	struct vfs_context context;
	struct vnode *dqvp;
	struct dqblk dqb, *dqblkp;
	uio_t auio;
	int error;
	char uio_buf[ FUNC3(1) ];

	if (dq->dq_id == 0) {
	        dq->dq_flags &= ~DQ_MOD;
		return (0);
	}
	if (dq->dq_qfile == NULL)
		FUNC7("dqsync: NULL dq_qfile");
	if ((dqvp = dq->dq_qfile->qf_vp) == NULLVP)
		FUNC7("dqsync: NULL qf_vp");

	auio = FUNC9(1, FUNC6(dq->dq_index), UIO_SYSSPACE, 
								  UIO_WRITE, &uio_buf[0], sizeof(uio_buf));
	FUNC8(auio, FUNC0(&dqb), sizeof (struct dqblk));

	context.vc_thread = FUNC5();	/* XXX */
	context.vc_ucred = dq->dq_qfile->qf_cred;

	dqblkp = &dq->dq_dqb;
	dqb.dqb_bhardlimit = FUNC2(dqblkp->dqb_bhardlimit);
	dqb.dqb_bsoftlimit = FUNC2(dqblkp->dqb_bsoftlimit);
	dqb.dqb_curbytes   = FUNC2(dqblkp->dqb_curbytes);
	dqb.dqb_ihardlimit = FUNC1(dqblkp->dqb_ihardlimit);
	dqb.dqb_isoftlimit = FUNC1(dqblkp->dqb_isoftlimit);
	dqb.dqb_curinodes  = FUNC1(dqblkp->dqb_curinodes);
	dqb.dqb_btime      = FUNC1(dqblkp->dqb_btime);
	dqb.dqb_itime      = FUNC1(dqblkp->dqb_itime);
	dqb.dqb_id         = FUNC1(dqblkp->dqb_id);
	dqb.dqb_spare[0]   = 0;
	dqb.dqb_spare[1]   = 0;
	dqb.dqb_spare[2]   = 0;
	dqb.dqb_spare[3]   = 0;

	error = FUNC4(dqvp, auio, 0, &context);
	if (FUNC10(auio) && error == 0)
		error = EIO;
	dq->dq_flags &= ~DQ_MOD;

	return (error);
}