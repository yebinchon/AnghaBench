#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct filedesc {int fd_knlistsize; scalar_t__ fd_knhashmask; scalar_t__ fd_kqhashmask; int /*<<< orphan*/ * fd_kqhash; int /*<<< orphan*/ * fd_knhash; int /*<<< orphan*/ * fd_knlist; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_9__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 unsigned int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int
FUNC9(void *proc, uint64_t *buf, int bufsize)
{
	proc_t p = (proc_t)proc;
	struct filedesc *fdp = p->p_fd;
	unsigned int nuptrs = 0;
	unsigned long buflen = bufsize / sizeof(uint64_t);

	if (buflen > 0) {
		FUNC0(buf != NULL);
	}

	FUNC7(p);
	for (int i = 0; i < fdp->fd_knlistsize; i++) {
		nuptrs = FUNC1(&fdp->fd_knlist[i], buf, buflen, nuptrs);
	}
	FUNC2(p);
	FUNC8(p);
	if (fdp->fd_knhashmask != 0) {
		for (int i = 0; i < (int)fdp->fd_knhashmask + 1; i++) {
			nuptrs = FUNC1(&fdp->fd_knhash[i], buf, buflen, nuptrs);
		}
	}
	FUNC3(p);

	FUNC4(p);
	if (fdp->fd_kqhashmask != 0) {
		for (int i = 0; i < (int)fdp->fd_kqhashmask + 1; i++) {
			nuptrs = FUNC6(p, &fdp->fd_kqhash[i], buf, buflen,
					nuptrs);
		}
	}
	FUNC5(p);

	return (int)nuptrs;
}