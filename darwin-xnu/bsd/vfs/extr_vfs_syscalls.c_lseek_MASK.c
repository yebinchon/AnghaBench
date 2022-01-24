#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct vfs_context {int dummy; } ;
struct lseek_args {scalar_t__ offset; int whence; int /*<<< orphan*/  fd; } ;
struct fileproc {TYPE_7__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_12__ {scalar_t__ fg_offset; } ;
struct TYPE_11__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int EOVERFLOW ; 
 int ESPIPE ; 
 int /*<<< orphan*/  FSIOC_FIOSEEKDATA ; 
 int /*<<< orphan*/  FSIOC_FIOSEEKHOLE ; 
#define  L_INCR 132 
#define  L_SET 131 
#define  L_XTND 130 
 int /*<<< orphan*/  NOTE_NONE ; 
#define  SEEK_DATA 129 
#define  SEEK_HOLE 128 
 scalar_t__ VCHR ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fileproc**,TYPE_1__**) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct vfs_context* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct vfs_context*) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,scalar_t__*,struct vfs_context*) ; 

int
FUNC12(proc_t p, struct lseek_args *uap, off_t *retval)
{
	struct fileproc *fp;
	vnode_t vp;
	struct vfs_context *ctx;
	off_t offset = uap->offset, file_size;
	int error;

	if ( (error = FUNC2(p,uap->fd, &fp, &vp)) ) {
	        if (error == ENOTSUP)
		        return (ESPIPE);
		return (error);
	}
	if (FUNC9(vp)) {
		FUNC1(uap->fd);
		return(ESPIPE);
	}


	ctx = FUNC6();
#if CONFIG_MACF
	if (uap->whence == L_INCR && uap->offset == 0)
		error = mac_file_check_get_offset(vfs_context_ucred(ctx),
		    fp->f_fglob);
	else
		error = mac_file_check_change_offset(vfs_context_ucred(ctx),
		    fp->f_fglob);
	if (error) {
		file_drop(uap->fd);
		return (error);
	}
#endif
	if ( (error = FUNC8(vp)) ) {
		FUNC1(uap->fd);
		return(error);
	}

	switch (uap->whence) {
	case L_INCR:
		offset += fp->f_fglob->fg_offset;
		break;
	case L_XTND:
		if ((error = FUNC11(vp, &file_size, ctx)) != 0)
			break;
		offset += file_size;
		break;
	case L_SET:
		break;
	case SEEK_HOLE:
        error = FUNC0(vp, FSIOC_FIOSEEKHOLE, (caddr_t)&offset, 0, ctx);
		break;
	case SEEK_DATA:
        error = FUNC0(vp, FSIOC_FIOSEEKDATA, (caddr_t)&offset, 0, ctx);
		break;
	default:
		error = EINVAL;
	}
	if (error == 0) {
		if (uap->offset > 0 && offset < 0) {
			/* Incremented/relative move past max size */
			error = EOVERFLOW;
		} else {
			/*
			 * Allow negative offsets on character devices, per
			 * POSIX 1003.1-2001.  Most likely for writing disk
			 * labels.
			 */
			if (offset < 0 && vp->v_type != VCHR) {
				/* Decremented/relative move before start */
				error = EINVAL;
			} else {
				/* Success */
				fp->f_fglob->fg_offset = offset;
				*retval = fp->f_fglob->fg_offset;
			}
		}
	}

	/*
	 * An lseek can affect whether data is "available to read."  Use
	 * hint of NOTE_NONE so no EVFILT_VNODE events fire
	 */
	FUNC5(vp, error, NOTE_NONE);
	(void)FUNC10(vp);
	FUNC1(uap->fd);
	return (error);
}