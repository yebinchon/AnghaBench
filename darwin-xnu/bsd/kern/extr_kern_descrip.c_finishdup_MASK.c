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
struct fileproc {int /*<<< orphan*/  f_fglob; } ;
struct filedesc {int* fd_ofileflags; scalar_t__* fd_ofiles; int fd_lastfile; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int int32_t ;

/* Variables and functions */
 int EBADF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int UF_RESERVED ; 
 int* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fileproc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fileproc*) ; 
 struct fileproc* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,struct fileproc*) ; 

int
FUNC12(proc_t p,
    struct filedesc *fdp, int old, int new, int fd_flags, int32_t *retval)
{
	struct fileproc *nfp;
	struct fileproc *ofp;
#if CONFIG_MACF
	int error;
#endif

#if DIAGNOSTIC
	proc_fdlock_assert(p, LCK_MTX_ASSERT_OWNED);
#endif
	if ((ofp = fdp->fd_ofiles[old]) == NULL ||
	    (fdp->fd_ofileflags[old] & UF_RESERVED)) {
		FUNC1(p, new);
		return (EBADF);
	}
	FUNC3(ofp);

#if CONFIG_MACF
	error = mac_file_check_dup(proc_ucred(p), ofp->f_fglob, new);
	if (error) {
		fg_drop(ofp);
		fdrelse(p, new);
		return (error);
	}
#endif

	FUNC9(p);

	nfp = FUNC4(NULL);

	FUNC7(p);

	if (nfp == NULL) {
		FUNC2(ofp);
		FUNC1(p, new);
		return (ENOMEM);
	}

	nfp->f_fglob = ofp->f_fglob;

#if DIAGNOSTIC
	if (fdp->fd_ofiles[new] != 0)
		panic("finishdup: overwriting fd_ofiles with new %d", new);
	if ((fdp->fd_ofileflags[new] & UF_RESERVED) == 0)
		panic("finishdup: unreserved fileflags with new %d", new);
#endif

	if (new > fdp->fd_lastfile)
		fdp->fd_lastfile = new;
	*FUNC0(p, new) |= fd_flags;
	FUNC11(p, new, nfp);
	*retval = new;
	return (0);
}