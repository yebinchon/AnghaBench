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
struct fileproc {scalar_t__ f_type; int /*<<< orphan*/  f_data; } ;
struct filedesc {int dummy; } ;
struct dup_args {int fd; } ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FUNC_START ; 
 scalar_t__ DTYPE_SOCKET ; 
 scalar_t__ ENTR_SHOULDTRACE ; 
 scalar_t__ FUNC0 (struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUARD_DUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (TYPE_1__*,struct filedesc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,struct fileproc*,int) ; 
 int FUNC6 (TYPE_1__*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int,struct fileproc**,int) ; 
 int /*<<< orphan*/  kEnTrActKernSocket ; 
 int /*<<< orphan*/  kGUARD_EXC_DUP ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int
FUNC10(proc_t p, struct dup_args *uap, int32_t *retval)
{
	struct filedesc *fdp = p->p_fd;
	int old = uap->fd;
	int new, error;
	struct fileproc *fp;

	FUNC8(p);
	if ( (error = FUNC7(p, old, &fp, 1)) ) {
		FUNC9(p);
		return(error);
	}
	if (FUNC0(fp, GUARD_DUP)) {
		error = FUNC6(p, old, fp, kGUARD_EXC_DUP);
		(void) FUNC5(p, old, fp, 1);
		FUNC9(p);
		return (error);
	}
	if ( (error = FUNC3(p, 0, &new)) ) {
		FUNC5(p, old, fp, 1);
		FUNC9(p);
		return (error);
	}
	error = FUNC4(p, fdp, old, new, 0, retval);
	FUNC5(p, old, fp, 1);
	FUNC9(p);

	if (ENTR_SHOULDTRACE && fp->f_type == DTYPE_SOCKET) {
		FUNC1(kEnTrActKernSocket, DBG_FUNC_START,
		    new, 0, (int64_t)FUNC2(fp->f_data));
	}

	return (error);
}