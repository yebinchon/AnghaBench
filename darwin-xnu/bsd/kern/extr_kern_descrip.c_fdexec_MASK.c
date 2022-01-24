#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {scalar_t__ uu_kqr_bound; } ;
struct kqueue {int dummy; } ;
struct fileproc {scalar_t__ f_iocount; int /*<<< orphan*/  f_fglob; } ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; int fd_lastfile; char* fd_ofileflags; int fd_freefile; struct kqueue* fd_wqkqueue; struct fileproc** fd_ofiles; } ;
typedef  TYPE_1__* proc_t ;
typedef  int boolean_t ;
struct TYPE_10__ {int p_fpdrainwait; int /*<<< orphan*/  p_fdmlock; struct filedesc* p_fd; } ;

/* Variables and functions */
 short POSIX_SPAWN_CLOEXEC_DEFAULT ; 
 int /*<<< orphan*/  PRIBIO ; 
 char UF_EXCLOSE ; 
 char UF_INHERIT ; 
 char UF_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fileproc*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fileproc*) ; 
 struct uthread* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 

void
FUNC14(proc_t p, short flags, int self_exec)
{
	struct filedesc *fdp = p->p_fd;
	int i;
	boolean_t cloexec_default = (flags & POSIX_SPAWN_CLOEXEC_DEFAULT) != 0;
	thread_t self = FUNC2();
	struct uthread *ut = FUNC4(self);
	struct kqueue *dealloc_kq = NULL;

	/*
	 * If the current thread is bound as a workq/workloop
	 * servicing thread, we need to unbind it first.
	 */
	if (ut->uu_kqr_bound && self_exec) {
		FUNC7(p, ut->uu_kqr_bound);
	}

	FUNC10(p);

	/*
	 * Deallocate the knotes for this process
	 * and mark the tables non-existent so
	 * subsequent kqueue closes go faster.
	 */
	FUNC5(p);
	FUNC0(fdp->fd_knlistsize == -1);
	FUNC0(fdp->fd_knhashmask == 0);

	for (i = fdp->fd_lastfile; i >= 0; i--) {

		struct fileproc *fp = fdp->fd_ofiles[i];
		char *flagp = &fdp->fd_ofileflags[i];

		if (fp && cloexec_default) {
			/*
			 * Reverse the usual semantics of file descriptor
			 * inheritance - all of them should be closed
			 * except files marked explicitly as "inherit" and
			 * not marked close-on-exec.
			 */
			if ((*flagp & (UF_EXCLOSE|UF_INHERIT)) != UF_INHERIT)
				*flagp |= UF_EXCLOSE;
			*flagp &= ~UF_INHERIT;
		}

		if (
		    ((*flagp & (UF_RESERVED|UF_EXCLOSE)) == UF_EXCLOSE)
#if CONFIG_MACF
		    || (fp && mac_file_check_inherit(proc_ucred(p), fp->f_fglob))
#endif
		) {
			FUNC13(p, i);
			if (i == fdp->fd_lastfile && i > 0)
				fdp->fd_lastfile--;
			if (i < fdp->fd_freefile)
				fdp->fd_freefile = i;

			/*
			 * Wait for any third party viewers (e.g., lsof)
			 * to release their references to this fileproc.
			 */
			while (fp->f_iocount > 0) {
				p->p_fpdrainwait = 1;
				FUNC9(&p->p_fpdrainwait, &p->p_fdmlock, PRIBIO,
				    "fpdrain", NULL);
			}

			FUNC1(fp, fp->f_fglob, p);

			FUNC3(fp);
		}
	}

	/* release the per-process workq kq */
	if (fdp->fd_wqkqueue) {
		dealloc_kq = fdp->fd_wqkqueue;
		fdp->fd_wqkqueue = NULL;
	}
	   
	FUNC11(p);

	/* Anything to free? */
	if (dealloc_kq)
		FUNC6(dealloc_kq);
}