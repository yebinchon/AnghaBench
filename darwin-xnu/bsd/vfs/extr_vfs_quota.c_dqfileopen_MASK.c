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
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct quotafile {int qf_btime; int qf_itime; int qf_maxentries; int qf_entrycnt; int /*<<< orphan*/  qf_shift; int /*<<< orphan*/  qf_vp; int /*<<< orphan*/  qf_cred; } ;
struct dqfilehdr {scalar_t__ dqh_magic; scalar_t__ dqh_version; scalar_t__ dqh_maxentries; scalar_t__ dqh_btime; scalar_t__ dqh_itime; scalar_t__ dqh_entrycnt; } ;
struct dqblk {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dqfilehdr*) ; 
 int EINVAL ; 
 int MAX_DQ_TIME ; 
 int MAX_IQ_TIME ; 
 int FUNC1 (scalar_t__) ; 
 int QF_VERSION ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int* quotamagic ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int*,struct vfs_context*) ; 

int
FUNC11(struct quotafile *qfp, int type)
{
	struct dqfilehdr header;
	struct vfs_context context;
	off_t file_size;
	uio_t auio;
	int error = 0;
	char uio_buf[ FUNC2(1) ];

	context.vc_thread = FUNC4();
	context.vc_ucred = qfp->qf_cred;
	
	/* Obtain the file size */
	if ((error = FUNC10(qfp->qf_vp, &file_size, &context)) != 0)
	        goto out;

	/* Read the file header */
	auio = FUNC8(1, 0, UIO_SYSSPACE, UIO_READ, 
				    &uio_buf[0], sizeof(uio_buf));
	FUNC7(auio, FUNC0(&header), sizeof (header));
	error = FUNC3(qfp->qf_vp, auio, 0, &context);
	if (error)
	        goto out;
	else if (FUNC9(auio)) {
		error = EINVAL;
		goto out;
	}
	/* Sanity check the quota file header. */
	if ((FUNC1(header.dqh_magic) != quotamagic[type]) ||
	    (FUNC1(header.dqh_version) > QF_VERSION) ||
	    (!FUNC6(FUNC1(header.dqh_maxentries))) ||
	    (FUNC1(header.dqh_maxentries) > (file_size / sizeof(struct dqblk)))) {
		error = EINVAL;
		goto out;
	}
	/* Set up the time limits for this quota. */
	if (header.dqh_btime != 0)
		qfp->qf_btime = FUNC1(header.dqh_btime);
	else
		qfp->qf_btime = MAX_DQ_TIME;
	if (header.dqh_itime != 0)
		qfp->qf_itime = FUNC1(header.dqh_itime);
	else
		qfp->qf_itime = MAX_IQ_TIME;

	/* Calculate the hash table constants. */
	qfp->qf_maxentries = FUNC1(header.dqh_maxentries);
	qfp->qf_entrycnt = FUNC1(header.dqh_entrycnt);
	qfp->qf_shift = FUNC5(qfp->qf_maxentries);
out:
	return (error);
}