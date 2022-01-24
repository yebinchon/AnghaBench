#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  uint64_t ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct fileproc {scalar_t__ f_type; int f_flag; TYPE_1__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ int64_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  enum uio_rw { ____Placeholder_uio_rw } uio_rw ;
struct TYPE_2__ {int /*<<< orphan*/  fg_cred; } ;

/* Variables and functions */
 scalar_t__ DTYPE_PIPE ; 
 scalar_t__ DTYPE_SOCKET ; 
 scalar_t__ DTYPE_VNODE ; 
 int EBADF ; 
 int EINVAL ; 
 int EIO ; 
 int FOF_OFFSET ; 
 int FREAD ; 
 int FWRITE ; 
 int IO_APPEND ; 
 int UIO_READ ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int UIO_SYSSPACE ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int UIO_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct fileproc*,int /*<<< orphan*/ *,int,struct vfs_context*) ; 
 int FUNC4 (struct fileproc*,int /*<<< orphan*/ *,int,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct fileproc*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct fileproc**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ,int,int,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 struct vfs_context* FUNC12 () ; 

int
FUNC13(
	int fd,
	enum uio_rw rw,
	uint64_t base,
	int64_t len,
	enum uio_seg segflg,
	off_t	offset,
	int	io_flg,
	int64_t *aresid)
{
        struct fileproc *fp;
	proc_t	p;
        int error = 0;
	int flags = 0;
	int spacetype;
	uio_t auio = NULL;
	char uio_buf[ FUNC1(1) ];
	struct vfs_context context = *(FUNC12());
	bool wrote_some = false;

	p = FUNC2();

        error = FUNC7(p, fd, &fp, 0);
        if (error)
                return(error);

	if (fp->f_type != DTYPE_VNODE && fp->f_type != DTYPE_PIPE && fp->f_type != DTYPE_SOCKET) {
		error = EINVAL;
		goto out;
	}
	if (rw == UIO_WRITE && !(fp->f_flag & FWRITE)) {
                error = EBADF;
		goto out;
	}

	if (rw == UIO_READ && !(fp->f_flag & FREAD)) {
    		error = EBADF;
    		goto out;
	}

	context.vc_ucred = fp->f_fglob->fg_cred;

	if (FUNC0(segflg))
		spacetype = FUNC8(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	else
		spacetype = UIO_SYSSPACE;

	auio = FUNC10(1, offset, spacetype, rw, &uio_buf[0], sizeof(uio_buf));

	FUNC9(auio, base, len);

	if ( !(io_flg & IO_APPEND))
		flags = FOF_OFFSET;

	if (rw == UIO_WRITE) {
		user_ssize_t orig_resid = FUNC11(auio);
		error = FUNC4(fp, auio, flags, &context);
		wrote_some = FUNC11(auio) < orig_resid;
	} else
		error = FUNC3(fp, auio, flags, &context);

	if (aresid)
		*aresid = FUNC11(auio);
	else {
		if (FUNC11(auio) && error == 0)
			error = EIO;
	}
out:
        if (wrote_some)
                FUNC6(p, fd, fp);
        else
                FUNC5(p, fd, fp, 0);

	return error;
}