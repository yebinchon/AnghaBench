#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct waitq {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct fileproc {int f_flags; scalar_t__ f_wset; TYPE_2__* f_fglob; scalar_t__ f_iocount; } ;
typedef  TYPE_3__* proc_t ;
struct TYPE_8__ {int p_fpdrainwait; int /*<<< orphan*/  p_fdmlock; } ;
struct TYPE_7__ {TYPE_1__* fg_ops; int /*<<< orphan*/  fg_cred; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* fo_drain ) (struct fileproc*,struct vfs_context*) ;} ;

/* Variables and functions */
 int FP_INSELECT ; 
 int FP_SELCONFLICT ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  NO_EVENT64 ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  THREAD_INTERRUPTED ; 
 int /*<<< orphan*/  WAITQ_ALL_PRIORITIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct waitq select_conflict_queue ; 
 int /*<<< orphan*/  FUNC4 (struct fileproc*,struct vfs_context*) ; 
 scalar_t__ FUNC5 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(proc_t p, struct fileproc * fp)
{
	struct vfs_context context;

	context.vc_thread = FUNC3(p);	/* XXX */
	context.vc_ucred = fp->f_fglob->fg_cred;

	fp->f_iocount-- ; /* (the one the close holds) */

	while (fp->f_iocount) {

	        FUNC0(&p->p_fdmlock);

		if (fp->f_fglob->fg_ops->fo_drain) {
			(*fp->f_fglob->fg_ops->fo_drain)(fp, &context);
		}
		if ((fp->f_flags & FP_INSELECT) == FP_INSELECT) {
			if (FUNC5((struct waitq *)fp->f_wset, NO_EVENT64,
					       THREAD_INTERRUPTED, WAITQ_ALL_PRIORITIES) == KERN_INVALID_ARGUMENT)
				FUNC2("bad wait queue for waitq_wakeup64_all %p (fp:%p)", fp->f_wset, fp);
		}
		if ((fp->f_flags & FP_SELCONFLICT) == FP_SELCONFLICT) {
			if (FUNC5(&select_conflict_queue, NO_EVENT64,
					       THREAD_INTERRUPTED, WAITQ_ALL_PRIORITIES) == KERN_INVALID_ARGUMENT)
				FUNC2("bad select_conflict_queue");
		}
		p->p_fpdrainwait = 1;

		FUNC1(&p->p_fpdrainwait, &p->p_fdmlock, PRIBIO, "fpdrain", NULL);

	}
#if DIAGNOSTIC
	if ((fp->f_flags & FP_INSELECT) != 0)
		panic("FP_INSELECT set on drained fp");
#endif
	if ((fp->f_flags & FP_SELCONFLICT) == FP_SELCONFLICT)
		fp->f_flags &= ~FP_SELCONFLICT;
}