#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  scalar_t__ u_int ;
struct fileproc {int f_flags; scalar_t__ f_type; TYPE_10__* f_fglob; scalar_t__ f_data; } ;
struct filedesc {int* fd_ofileflags; int fd_knlistsize; } ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_16__ {struct filedesc* p_fd; } ;
struct TYPE_15__ {int /*<<< orphan*/  fg_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FUNC_END ; 
 scalar_t__ DTYPE_SOCKET ; 
 scalar_t__ DTYPE_VNODE ; 
 scalar_t__ ENTR_SHOULDTRACE ; 
 int FD_DUP2RESV ; 
 int FP_AIOISSUED ; 
 int FP_CLOSING ; 
 int FP_WAITCLOSE ; 
 int FP_WAITEVENT ; 
 int FP_WRITTEN ; 
 int /*<<< orphan*/  KAUTH_FILEOP_CLOSE ; 
 scalar_t__ KAUTH_FILEOP_CLOSE_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int UF_RESERVED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (struct fileproc*,TYPE_10__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct fileproc*) ; 
 int /*<<< orphan*/  FUNC6 (struct fileproc*) ; 
 int /*<<< orphan*/  kEnTrActKernSocket ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct fileproc*) ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 

int
FUNC20(proc_t p, int fd, struct fileproc *fp, int flags)
{
	struct filedesc *fdp = p->p_fd;
	int error =0;
	int resvfd = flags & FD_DUP2RESV;


#if DIAGNOSTIC
	proc_fdlock_assert(p, LCK_MTX_ASSERT_OWNED);
#endif

	/* Keep people from using the filedesc while we are closing it */
	FUNC14(p, fd);


	if ((fp->f_flags & FP_CLOSING) == FP_CLOSING) {
		FUNC10("close_internal_locked: being called on already closing fd");
	}


#if DIAGNOSTIC
	if ((fdp->fd_ofileflags[fd] & UF_RESERVED) == 0)
		panic("close_internal: unreserved fileflags with fd %d", fd);
#endif

	fp->f_flags |= FP_CLOSING;

	if ( (fp->f_flags & FP_AIOISSUED) || FUNC8() ) {

	        FUNC13(p);

		if ( (fp->f_type == DTYPE_VNODE) && FUNC8() ) {
		        /*
			 * call out to allow 3rd party notification of close.
			 * Ignore result of kauth_authorize_fileop call.
			 */
		        if (FUNC16((vnode_t)fp->f_data) == 0) {
		        	u_int	fileop_flags = 0;
		        	if ((fp->f_flags & FP_WRITTEN) != 0)
		        		fileop_flags |= KAUTH_FILEOP_CLOSE_MODIFIED;
			        FUNC7(fp->f_fglob->fg_cred, KAUTH_FILEOP_CLOSE,
						       (uintptr_t)fp->f_data, (uintptr_t)fileop_flags);
				FUNC17((vnode_t)fp->f_data);
			}
		}
		if (fp->f_flags & FP_AIOISSUED)
		        /*
			 * cancel all async IO requests that can be cancelled.
			 */
		        FUNC2( p, fd );

		FUNC11(p);
	}

	if (fd < fdp->fd_knlistsize)
		FUNC9(p, fd);

	if (fp->f_flags & FP_WAITEVENT)
		(void)FUNC18(p, fp);

	FUNC5(p, fp);

	if (resvfd == 0) {
		FUNC3(p, fd);
	} else {
		FUNC15(p, fd);
	}

	if (ENTR_SHOULDTRACE && fp->f_type == DTYPE_SOCKET)
		FUNC0(kEnTrActKernSocket, DBG_FUNC_END,
		    fd, 0, (int64_t)FUNC1(fp->f_data));

	error = FUNC4(fp, fp->f_fglob, p);
	if ((fp->f_flags & FP_WAITCLOSE) == FP_WAITCLOSE)
		FUNC19(&fp->f_flags);
	fp->f_flags &= ~(FP_WAITCLOSE | FP_CLOSING);

	FUNC13(p);

	FUNC6(fp);

	FUNC11(p);

#if DIAGNOSTIC
	if (resvfd != 0) {
		if ((fdp->fd_ofileflags[fd] & UF_RESERVED) == 0)
			panic("close with reserved fd returns with freed fd:%d: proc: %p", fd, p);
	}
#endif

	return(error);
}