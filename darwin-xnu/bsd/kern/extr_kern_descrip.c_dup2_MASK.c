#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct fileproc {int dummy; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; int /*<<< orphan*/ ** fd_ofiles; } ;
struct dup2_args {int from; int to; } ;
typedef  scalar_t__ rlim_t ;
typedef  TYPE_2__* proc_t ;
typedef  int int32_t ;
struct TYPE_18__ {TYPE_1__* p_rlimit; struct filedesc* p_fd; } ;
struct TYPE_17__ {scalar_t__ rlim_cur; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FD_DUP2RESV ; 
 scalar_t__ FUNC0 (struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUARD_CLOSE ; 
 int /*<<< orphan*/  GUARD_DUP ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 size_t RLIMIT_NOFILE ; 
 int UF_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,struct filedesc*,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,struct fileproc*,int) ; 
 int FUNC6 (TYPE_2__*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int,struct fileproc**,int) ; 
 int /*<<< orphan*/  kGUARD_EXC_CLOSE ; 
 int /*<<< orphan*/  kGUARD_EXC_DUP ; 
 int maxfiles ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 

int
FUNC15(proc_t p, struct dup2_args *uap, int32_t *retval)
{
	struct filedesc *fdp = p->p_fd;
	int old = uap->from, new = uap->to;
	int i, error;
	struct fileproc *fp, *nfp;

	FUNC9(p);

startover:
	if ( (error = FUNC7(p, old, &fp, 1)) ) {
		FUNC11(p);
		return(error);
	}
	if (FUNC0(fp, GUARD_DUP)) {
		error = FUNC6(p, old, fp, kGUARD_EXC_DUP);
		(void) FUNC5(p, old, fp, 1);
		FUNC11(p);
		return (error);
	}
	if (new < 0 ||
		(rlim_t)new >= p->p_rlimit[RLIMIT_NOFILE].rlim_cur ||
	    new >= maxfiles) {
		FUNC5(p, old, fp, 1);
		FUNC11(p);
		return (EBADF);
	}
	if (old == new) {
		FUNC5(p, old, fp, 1);
		*retval = new;
		FUNC11(p);
		return (0);
	}
	if (new < 0 || new >= fdp->fd_nfiles) {
		if ( (error = FUNC2(p, new, &i)) ) {
			FUNC5(p, old, fp, 1);
			FUNC11(p);
			return (error);
		}
		if (new != i) {
			FUNC3(p, i);
			goto closeit;
		}
	} else {
closeit:
		while ((fdp->fd_ofileflags[new] & UF_RESERVED) == UF_RESERVED)  {
				FUNC5(p, old, fp, 1);
				FUNC14(p, new);
#if DIAGNOSTIC
				proc_fdlock_assert(p, LCK_MTX_ASSERT_OWNED);
#endif
				goto startover;
		}

		if ((fdp->fd_ofiles[new] != NULL) &&
		    ((error = FUNC7(p, new, &nfp, 1)) == 0)) {
			FUNC5(p, old, fp, 1);
			if (FUNC0(nfp, GUARD_CLOSE)) {
				error = FUNC6(p,
				    new, nfp, kGUARD_EXC_CLOSE);
				(void) FUNC5(p, new, nfp, 1);
				FUNC11(p);
				return (error);
			}
			(void)FUNC1(p, new, nfp, FD_DUP2RESV);
#if DIAGNOSTIC
			proc_fdlock_assert(p, LCK_MTX_ASSERT_OWNED);
#endif
			FUNC12(p, new);
			goto startover;
		} else  {
#if DIAGNOSTIC
			if (fdp->fd_ofiles[new] != NULL)
				panic("dup2: no ref on fileproc %d", new);
#endif
			FUNC13(p, new);
		}

#if DIAGNOSTIC
		proc_fdlock_assert(p, LCK_MTX_ASSERT_OWNED);
#endif

	}
#if DIAGNOSTIC
	if (fdp->fd_ofiles[new] != 0)
		panic("dup2: overwriting fd_ofiles with new %d", new);
	if ((fdp->fd_ofileflags[new] & UF_RESERVED) == 0)
		panic("dup2: unreserved fileflags with new %d", new);
#endif
	error = FUNC4(p, fdp, old, new, 0, retval);
	FUNC5(p, old, fp, 1);
	FUNC11(p);

	return(error);
}