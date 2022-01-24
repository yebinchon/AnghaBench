#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct fileproc {TYPE_6__* f_fglob; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_8__ {scalar_t__ fg_data; } ;
struct TYPE_7__ {int p_ladvflag; struct filedesc* p_fd; } ;

/* Variables and functions */
 scalar_t__ DTYPE_SOCKET ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int P_LXBKIDLEINPROG ; 
 int UF_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC5(proc_t p)
{
	if (p->p_ladvflag & P_LXBKIDLEINPROG) {
		struct filedesc	*fdp;
		int i;

		FUNC2(p);
		fdp = p->p_fd;
		for (i = 0; i < fdp->fd_nfiles; i++) {
			struct fileproc	*fp;
			struct socket *so;

			fp = fdp->fd_ofiles[i];
			if (fp == NULL ||
			    (fdp->fd_ofileflags[i] & UF_RESERVED) != 0 ||
			    FUNC0(fp->f_fglob) != DTYPE_SOCKET)
				continue;

			so = (struct socket *)fp->f_fglob->fg_data;
			(void) FUNC4(p, so, 0);
		}
		FUNC3(p);

		FUNC1(~P_LXBKIDLEINPROG, &p->p_ladvflag);
	}
}