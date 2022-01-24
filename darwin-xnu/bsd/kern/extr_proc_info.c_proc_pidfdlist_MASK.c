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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint32_t ;
struct proc_fdinfo {int proc_fd; scalar_t__ proc_fdtype; } ;
struct fileproc {int /*<<< orphan*/  f_fglob; } ;
typedef  TYPE_2__* proc_t ;
typedef  int int32_t ;
typedef  scalar_t__ file_type_t ;
struct TYPE_7__ {TYPE_1__* p_fd; } ;
struct TYPE_6__ {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;

/* Variables and functions */
 scalar_t__ DTYPE_ATALK ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROX_FDTYPE_ATALK ; 
 int UF_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int 
FUNC7(proc_t p, user_addr_t buffer, uint32_t  buffersize, int32_t *retval)
{
		uint32_t numfds = 0;
		uint32_t needfds;
		char * kbuf;
		struct proc_fdinfo * pfd;
		struct fileproc * fp;
		int n;
		int count = 0;
		int error = 0;
		
		if (p->p_fd->fd_nfiles > 0) {
			numfds = (uint32_t)p->p_fd->fd_nfiles;
		}

		if (buffer == (user_addr_t) 0) {
			numfds += 20;
			*retval = (numfds * sizeof(struct proc_fdinfo));
			return(0);
		}

		/* buffersize is big enough atleast for one struct */
		needfds = buffersize/sizeof(struct proc_fdinfo);

		if (numfds > needfds) {
			numfds = needfds;
		}

		kbuf = (char *)FUNC3((vm_size_t)(numfds * sizeof(struct proc_fdinfo)));
		if (kbuf == NULL)
			return(ENOMEM);
		FUNC1(kbuf, numfds * sizeof(struct proc_fdinfo));

		FUNC5(p);

		pfd = (struct proc_fdinfo *)kbuf;

		for (n = 0; ((n < (int)numfds) && (n < p->p_fd->fd_nfiles)); n++) {
			if (((fp = p->p_fd->fd_ofiles[n]) != 0) 
			     && ((p->p_fd->fd_ofileflags[n] & UF_RESERVED) == 0)) {
				file_type_t fdtype = FUNC0(fp->f_fglob);
				pfd->proc_fd = n;
				pfd->proc_fdtype = (fdtype != DTYPE_ATALK) ?
					fdtype : PROX_FDTYPE_ATALK;
				count++;
				pfd++;
			}
		}
		FUNC6(p);

		error = FUNC2(kbuf, buffer, count * sizeof(struct proc_fdinfo));
		FUNC4((void *)kbuf, (vm_size_t)(numfds * sizeof(struct proc_fdinfo)));
		if (error == 0)
			*retval = (count * sizeof(struct proc_fdinfo));
		return(error);		
}