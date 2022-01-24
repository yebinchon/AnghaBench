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
typedef  int uint32_t ;
typedef  int u_int32_t ;
struct vnode {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct quotafile {int qf_maxentries; int /*<<< orphan*/  qf_entrycnt; int /*<<< orphan*/  qf_shift; int /*<<< orphan*/  qf_cred; struct vnode* qf_vp; } ;
struct dqblk {int dqb_id; int dqb_ihardlimit; int dqb_isoftlimit; int dqb_curinodes; int dqb_btime; int dqb_itime; void* dqb_curbytes; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dqblk*) ; 
 int EIO ; 
 int FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct dqblk*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC13 (struct quotafile*) ; 
 int /*<<< orphan*/  FUNC14 (struct quotafile*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct quotafile *qfp, u_int32_t id, struct dqblk *dqb, uint32_t *index)
{
	struct vnode *dqvp;
	struct vfs_context context;
	uio_t auio;
	int i, skip, last;
	u_int32_t mask;
	int error = 0;
	char uio_buf[ FUNC4(1) ];


	FUNC13(qfp);

	dqvp = qfp->qf_vp;

	context.vc_thread = FUNC8();
	context.vc_ucred = qfp->qf_cred;

	mask = qfp->qf_maxentries - 1;
	i = FUNC9(id, qfp->qf_shift, mask);
	skip = FUNC10(id, mask);

	for (last = (i + (qfp->qf_maxentries-1) * skip) & mask;
	     i != last;
	     i = (i + skip) & mask) {
		auio = FUNC16(1, FUNC11(i), UIO_SYSSPACE, UIO_READ, 
									  &uio_buf[0], sizeof(uio_buf));
		FUNC15(auio, FUNC0(dqb), sizeof (struct dqblk));
		error = FUNC5(dqvp, auio, 0, &context);
		if (error) {
			FUNC12("dqlookup: error %d looking up id %u at index %d\n", error, id, i);
			break;
		} else if (FUNC18(auio)) {
			error = EIO;
			FUNC12("dqlookup: error looking up id %u at index %d\n", id, i);
			break;
		}
		/*
		 * An empty entry means there is no entry
		 * with that id.  In this case a new dqb
		 * record will be inserted.
		 */
		if (dqb->dqb_id == 0) {
			FUNC7(dqb, sizeof(struct dqblk));
			dqb->dqb_id = FUNC3(id);
			/*
			 * Write back to reserve entry for this id
			 */
			FUNC17(auio, FUNC11(i), UIO_SYSSPACE, UIO_WRITE);
			FUNC15(auio, FUNC0(dqb), sizeof (struct dqblk));
			error = FUNC6(dqvp, auio, 0, &context);
			if (FUNC18(auio) && error == 0)
				error = EIO;
			if (error == 0)
				++qfp->qf_entrycnt;
			dqb->dqb_id = id;
			break;
		}
		/* An id match means an entry was found. */
		if (FUNC1(dqb->dqb_id) == id) {
			dqb->dqb_bhardlimit = FUNC2(dqb->dqb_bhardlimit);
			dqb->dqb_bsoftlimit = FUNC2(dqb->dqb_bsoftlimit);
			dqb->dqb_curbytes   = FUNC2(dqb->dqb_curbytes);
			dqb->dqb_ihardlimit = FUNC1(dqb->dqb_ihardlimit);
			dqb->dqb_isoftlimit = FUNC1(dqb->dqb_isoftlimit);
			dqb->dqb_curinodes  = FUNC1(dqb->dqb_curinodes);
			dqb->dqb_btime      = FUNC1(dqb->dqb_btime);
			dqb->dqb_itime      = FUNC1(dqb->dqb_itime);
			dqb->dqb_id         = FUNC1(dqb->dqb_id);
			break;
		}
	}
	FUNC14(qfp);

	*index = i;  /* remember index so we don't have to recompute it later */

	return (error);
}