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
typedef  scalar_t__ uint64_t ;
typedef  int u_int32_t ;
typedef  int u_int ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct proc {struct filedesc* p_fd; } ;
struct fileproc {int f_flags; scalar_t__ f_type; scalar_t__ f_ops; int /*<<< orphan*/  f_cred; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
struct _select_data {int count; int /*<<< orphan*/ * wqp; } ;
struct _select {int* ibits; int* obits; } ;
typedef  int int32_t ;

/* Variables and functions */
 int EBADF ; 
 int EIO ; 
 int FP_INSELECT ; 
 int FP_SELCONFLICT ; 
#define  FREAD 129 
#define  FWRITE 128 
 int NFDBITS ; 
 int SEL_FIRSTPASS ; 
 int SEL_SECONDPASS ; 
 int UF_RESERVED ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct fileproc*,int,scalar_t__*,struct vfs_context*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fileproc*,void**,struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct fileproc*,int /*<<< orphan*/ ,struct waitq_set*) ; 
 struct vfs_context* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq_set*) ; 

__attribute__((used)) static int
FUNC11(struct proc *p, struct _select *sel, struct _select_data * seldata,
	int nfd, int32_t *retval, int sel_pass, struct waitq_set *wqset)
{
	struct filedesc *fdp = p->p_fd;
	int msk, i, j, fd;
	u_int32_t bits;
	struct fileproc *fp;
	int n = 0;		/* count of bits */
	int nc = 0;		/* bit vector offset (nc'th bit) */
	static int flag[3] = { FREAD, FWRITE, 0 };
	u_int32_t *iptr, *optr;
	u_int nw;
	u_int32_t *ibits, *obits;
	uint64_t reserved_link, *rl_ptr = NULL;
	int count;
	struct vfs_context context = *FUNC7();

	/*
	 * Problems when reboot; due to MacOSX signal probs
	 * in Beaker1C ; verify that the p->p_fd is valid
	 */
	if (fdp == NULL) {
		*retval=0;
		return(EIO);
	}
	ibits = sel->ibits;
	obits = sel->obits;

	nw = FUNC2(nfd, NFDBITS);

	count = seldata->count;

	nc = 0;
	if (!count) {
		*retval = 0;
		return 0;
	}

	FUNC3(p);
	for (msk = 0; msk < 3; msk++) {
		iptr = (u_int32_t *)&ibits[msk * nw];
		optr = (u_int32_t *)&obits[msk * nw];

		for (i = 0; i < nfd; i += NFDBITS) {
			bits = iptr[i/NFDBITS];

			while ((j = FUNC0(bits)) && (fd = i + --j) < nfd) {
				bits &= ~(1 << j);

				if (fd < fdp->fd_nfiles)
					fp = fdp->fd_ofiles[fd];
				else
					fp = NULL;

				if (fp == NULL || (fdp->fd_ofileflags[fd] & UF_RESERVED)) {
					/*
					 * If we abort because of a bad
					 * fd, let the caller unwind...
					 */
					FUNC4(p);
					return(EBADF);
				}
				if (sel_pass == SEL_SECONDPASS) {
					reserved_link = 0;
					rl_ptr = NULL;
					FUNC6(fp, seldata->wqp[nc], wqset);
				} else {
					reserved_link = FUNC9((struct waitq *)wqset);
					rl_ptr = &reserved_link;
					if (fp->f_flags & FP_INSELECT)
						/* someone is already in select on this fp */
						fp->f_flags |= FP_SELCONFLICT;
					else
						fp->f_flags |= FP_INSELECT;

					FUNC10(wqset);
				}

				context.vc_ucred = fp->f_cred;

				/*
				 * stash this value b/c fo_select may replace
				 * reserved_link with a pointer to a waitq object
				 */
				uint64_t rsvd = reserved_link;

				/* The select; set the bit, if true */
				if (fp->f_ops && fp->f_type
					&& FUNC1(fp, flag[msk], rl_ptr, &context)) {
					optr[fd/NFDBITS] |= (1 << (fd % NFDBITS));
					n++;
				}
				if (sel_pass == SEL_FIRSTPASS) {
					FUNC8(rsvd);
					/*
					 * If the fp's supporting selinfo structure was linked
					 * to this thread's waitq set, then 'reserved_link'
					 * will have been updated by selrecord to be a pointer
					 * to the selinfo's waitq.
					 */
					if (reserved_link == rsvd)
						rl_ptr = NULL; /* fo_select never called selrecord() */
					/*
					 * Hook up the thread's waitq set either to
					 * the fileproc structure, or to the global
					 * conflict queue: but only on the first
					 * select pass.
					 */
					seldata->wqp[nc] = FUNC5(fp, (void **)rl_ptr, wqset);
				}
				nc++;
			}
		}
	}
	FUNC4(p);

	*retval = n;
	return (0);
}