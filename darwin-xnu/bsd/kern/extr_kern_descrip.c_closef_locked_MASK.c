#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/ * vc_thread; } ;
struct flock {int /*<<< orphan*/  l_type; scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; } ;
struct fileproc {int f_flags; } ;
struct fileglob {scalar_t__ fg_count; int /*<<< orphan*/  fg_lock; int /*<<< orphan*/  fg_lflags; int /*<<< orphan*/  fg_flag; scalar_t__ fg_data; int /*<<< orphan*/  fg_cred; } ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int p_ladvflag; } ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int /*<<< orphan*/  FG_TERM ; 
 scalar_t__ FUNC0 (struct fileglob*) ; 
 int FP_WRITTEN ; 
 int /*<<< orphan*/  FWASWRITTEN ; 
 int /*<<< orphan*/  F_POSIX ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int P_LADVLOCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ,struct vfs_context*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fileglob*) ; 
 int FUNC5 (struct fileglob*,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct fileglob*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

int
FUNC13(struct fileproc *fp, struct fileglob *fg, proc_t p)
{
	struct vnode *vp;
	struct flock lf;
	struct vfs_context context;
	int error;

	if (fg == NULL) {
		return (0);
	}

	/* Set up context with cred stashed in fg */
	if (p == FUNC2())
		context.vc_thread = FUNC3();
	else
		context.vc_thread = NULL;
	context.vc_ucred = fg->fg_cred;

	/*
	 * POSIX record locking dictates that any close releases ALL
	 * locks owned by this process.  This is handled by setting
	 * a flag in the unlock to free ONLY locks obeying POSIX
	 * semantics, and not to free BSD-style file locks.
	 * If the descriptor was in a message, POSIX-style locks
	 * aren't passed with the descriptor.
	 */
	if (p && (p->p_ladvflag & P_LADVLOCK) &&
	    DTYPE_VNODE == FUNC0(fg)) {
		FUNC10(p);

		lf.l_whence = SEEK_SET;
		lf.l_start = 0;
		lf.l_len = 0;
		lf.l_type = F_UNLCK;
		vp = (struct vnode *)fg->fg_data;

		if ( (error = FUNC11(vp)) == 0 ) {
			(void) FUNC1(vp, (caddr_t)p, F_UNLCK, &lf, F_POSIX, &context, NULL);
			(void)FUNC12(vp);
		}
		FUNC9(p);
	}
	FUNC6(&fg->fg_lock);
	fg->fg_count--;

	if (fg->fg_count > 0) {
		FUNC7(&fg->fg_lock);
		return (0);
	}
#if DIAGNOSTIC
	if (fg->fg_count != 0)
		panic("fg %p: being freed with bad fg_count (%d)", fg, fg->fg_count);
#endif

	if (fp && (fp->f_flags & FP_WRITTEN))
	        fg->fg_flag |= FWASWRITTEN;

	fg->fg_lflags |= FG_TERM;
	FUNC7(&fg->fg_lock);

	if (p)
		FUNC10(p);

	/* Since we ensure that fg->fg_ops is always initialized,
	 * it is safe to invoke fo_close on the fg */
	error = FUNC5(fg, &context);

	FUNC4(fg);

	if (p)
		FUNC9(p);

	return(error);
}