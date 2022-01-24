#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct fileproc {scalar_t__ f_iocount; int f_flags; } ;
typedef  TYPE_2__* proc_t ;
struct TYPE_7__ {scalar_t__ p_fpdrainwait; TYPE_1__* p_fd; } ;
struct TYPE_6__ {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;

/* Variables and functions */
 int EBADF ; 
 int FP_SELCONFLICT ; 
 int UF_CLOSING ; 
 int UF_RESERVED ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

int
FUNC4(int fd)
{
	struct fileproc *fp;
	proc_t p = FUNC0();
	int	needwakeup = 0;

	FUNC1(p);
	if (fd < 0 || fd >= p->p_fd->fd_nfiles ||
			(fp = p->p_fd->fd_ofiles[fd]) == NULL ||
			((p->p_fd->fd_ofileflags[fd] & UF_RESERVED) &&
			 !(p->p_fd->fd_ofileflags[fd] & UF_CLOSING))) {
		FUNC2(p);
		return (EBADF);
	}
	fp->f_iocount --;

	if (fp->f_iocount == 0) {
		if (fp->f_flags & FP_SELCONFLICT)
			fp->f_flags &= ~FP_SELCONFLICT;

		if (p->p_fpdrainwait) {
			p->p_fpdrainwait = 0;
			needwakeup = 1;
		}
	}
	FUNC2(p);

	if (needwakeup)
	        FUNC3(&p->p_fpdrainwait);
	return(0);
}