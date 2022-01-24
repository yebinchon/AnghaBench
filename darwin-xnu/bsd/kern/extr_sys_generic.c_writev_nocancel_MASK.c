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
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
struct writev_nocancel_args {scalar_t__ iovcnt; int /*<<< orphan*/  fd; int /*<<< orphan*/  iovp; } ;
struct user_iovec {int dummy; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct fileproc*,int /*<<< orphan*/ ) ; 
 int FWRITE ; 
 int /*<<< orphan*/  GUARD_WRITE ; 
 scalar_t__ FUNC2 (struct proc*) ; 
 scalar_t__ UIO_MAXIOV ; 
 int /*<<< orphan*/  UIO_USERSPACE32 ; 
 int /*<<< orphan*/  UIO_USERSPACE64 ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct user_iovec*) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int /*<<< orphan*/ ,struct fileproc*) ; 
 int FUNC6 (struct proc*,int /*<<< orphan*/ ,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct proc*,int /*<<< orphan*/ ,struct fileproc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kGUARD_EXC_WRITE ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct user_iovec* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct proc*,struct fileproc*,int /*<<< orphan*/ *,scalar_t__*) ; 

int
FUNC15(struct proc *p, struct writev_nocancel_args *uap, user_ssize_t *retval)
{
	uio_t auio = NULL;
	int error;
	struct fileproc *fp;
	struct user_iovec *iovp;
	bool wrote_some = false;

	FUNC0(fd, uap->fd);

	/* Verify range bedfore calling uio_create() */
	if (uap->iovcnt <= 0 || uap->iovcnt > UIO_MAXIOV)
		return (EINVAL);

	/* allocate a uio large enough to hold the number of iovecs passed */
	auio = FUNC11(uap->iovcnt, 0,
				  (FUNC2(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
				  UIO_WRITE);
				  
	/* get location of iovecs within the uio.  then copyin the iovecs from
	 * user space.
	 */
	iovp = FUNC13(auio);
	if (iovp == NULL) {
		error = ENOMEM;
		goto ExitThisRoutine;
	}
	error = FUNC3(uap->iovp,
		FUNC2(p) ? UIO_USERSPACE64 : UIO_USERSPACE32,
		uap->iovcnt, iovp);
	if (error) {
		goto ExitThisRoutine;
	}
	
	/* finalize uio_t for use and do the IO 
	 */
	error = FUNC10(auio);
	if (error) {
		goto ExitThisRoutine;
	}

	error = FUNC7(p, uap->fd, &fp, 0);
	if (error)
		goto ExitThisRoutine;
	
	if ((fp->f_flag & FWRITE) == 0) {
		error = EBADF;
	} else if (FUNC1(fp, GUARD_WRITE)) {
		FUNC8(p);
		error = FUNC6(p, uap->fd, fp, kGUARD_EXC_WRITE);
		FUNC9(p);
	} else {
		error = FUNC14(p, fp, auio, retval);
		wrote_some = *retval > 0;
	}
	
	if (wrote_some)
	        FUNC5(p, uap->fd, fp);
	else
	        FUNC4(p, uap->fd, fp, 0);

ExitThisRoutine:
	if (auio != NULL) {
		FUNC12(auio);
	}
	return (error);
}