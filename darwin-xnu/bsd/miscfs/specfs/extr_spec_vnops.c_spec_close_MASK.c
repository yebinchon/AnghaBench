#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vnop_close_args {int a_fflag; int /*<<< orphan*/  a_context; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_specinfo; int /*<<< orphan*/  v_rdev; } ;
struct tty {int dummy; } ;
struct session {int /*<<< orphan*/  s_ttypgrpid; struct tty* s_ttyp; int /*<<< orphan*/  s_ttyvid; struct vnode* s_ttyvp; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {int (* d_close ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct proc*) ;} ;
struct TYPE_5__ {int (* d_close ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct proc*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  si_opencount; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_WRITE_DATA ; 
 int EBADF ; 
 int IO_REVOKE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  NO_PID ; 
 struct session* SESSION_NULL ; 
 struct tty* FUNC0 (struct session*) ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  S_IFCHR ; 
 struct tty* TTY_NULL ; 
#define  VBLK 129 
#define  VCHR 128 
 TYPE_3__* bdevsw ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* cdevsw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 struct session* FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct session*) ; 
 int /*<<< orphan*/  FUNC9 (struct session*) ; 
 int /*<<< orphan*/  FUNC10 (struct session*) ; 
 int FUNC11 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct proc*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct proc*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty*) ; 
 int /*<<< orphan*/  FUNC15 (struct tty*) ; 
 int /*<<< orphan*/  FUNC16 (struct tty*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty*) ; 
 int FUNC18 (struct vnode*) ; 
 struct proc* FUNC19 (int /*<<< orphan*/ ) ; 

int
FUNC20(struct vnop_close_args *ap)
{
	struct vnode *vp = ap->a_vp;
	dev_t dev = vp->v_rdev;
	int error = 0;
	int flags = ap->a_fflag;
	struct proc *p = FUNC19(ap->a_context);
	struct session *sessp;

	switch (vp->v_type) {

	case VCHR:
		/*
		 * Hack: a tty device that is a controlling terminal
		 * has a reference from the session structure.
		 * We cannot easily tell that a character device is
		 * a controlling terminal, unless it is the closing
		 * process' controlling terminal.  In that case,
		 * if the reference count is 1 (this is the very
		 * last close)
		 */
		sessp = FUNC7(p);
		FUNC2(dev, S_IFCHR);
		if (sessp != SESSION_NULL) {
			if (vp == sessp->s_ttyvp && FUNC18(vp) == 1) {
				struct tty *tp = TTY_NULL;

				FUNC3(dev, S_IFCHR);
				FUNC8(sessp);
				if (vp == sessp->s_ttyvp) {
					tp = FUNC0(sessp);
					sessp->s_ttyvp = NULL;
					sessp->s_ttyvid = 0;
					sessp->s_ttyp = TTY_NULL;
					sessp->s_ttypgrpid = NO_PID;
				} 
				FUNC10(sessp);

				if (tp != TTY_NULL) {
					/*
					 * We may have won a race with a proc_exit
					 * of the session leader, the winner
					 * clears the flag (even if not set)
					 */
					FUNC14(tp);
					FUNC16(tp);
					FUNC15(tp);

					FUNC17(tp);
				}
				FUNC2(dev, S_IFCHR);
			}
			FUNC9(sessp);
		}

		if (--vp->v_specinfo->si_opencount < 0)
			FUNC6("negative open count (c, %u, %u)", FUNC4(dev), FUNC5(dev));

		/*
		 * close on last reference or on vnode revoke call
		 */
		if (FUNC18(vp) == 0 || (flags & IO_REVOKE) != 0)
			error = cdevsw[FUNC4(dev)].d_close(dev, flags, S_IFCHR, p);

		FUNC3(dev, S_IFCHR);
		break;

	case VBLK:
		/*
		 * If there is more than one outstanding open, don't
		 * send the close to the device.
		 */
		FUNC2(dev, S_IFBLK);
		if (FUNC18(vp) > 1) {
			vp->v_specinfo->si_opencount--;
			FUNC3(dev, S_IFBLK);
			return (0);
		}
		FUNC3(dev, S_IFBLK);

		/*
		 * On last close of a block device (that isn't mounted)
		 * we must invalidate any in core blocks, so that
		 * we can, for instance, change floppy disks.
		 */
	        if ((error = FUNC11(vp, MNT_WAIT, ap->a_context)))
		        return (error);

		error = FUNC1(vp, BUF_WRITE_DATA, 0, 0);
		if (error)
			return (error);

		FUNC2(dev, S_IFBLK);

		if (--vp->v_specinfo->si_opencount < 0)
			FUNC6("negative open count (b, %u, %u)", FUNC4(dev), FUNC5(dev));

		if (FUNC18(vp) == 0)
			error = bdevsw[FUNC4(dev)].d_close(dev, flags, S_IFBLK, p);

		FUNC3(dev, S_IFBLK);
		break;

	default:
		FUNC6("spec_close: not special");
		return(EBADF);
	}

	return error;
}