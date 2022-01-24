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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct ftruncate_args {int fd; scalar_t__ length; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int fg_flag; int /*<<< orphan*/  fg_cred; scalar_t__ fg_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int,int,...) ; 
#define  DTYPE_PSXSHM 129 
#define  DTYPE_VNODE 128 
 int EINVAL ; 
 int FUNC1 (TYPE_1__*) ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,struct fileproc**,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct fileproc*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnpath ; 
 int /*<<< orphan*/  vnpath_withref ; 

int
FUNC13(proc_t p, struct ftruncate_args *uap, int32_t *retval)
{
	vfs_context_t ctx = FUNC9();
	struct vnode_attr va;
	vnode_t vp;
	struct fileproc *fp;
	int error ;
	int fd = uap->fd;

	FUNC0(fd, uap->fd);
	if (uap->length < 0)
		return(EINVAL);

	if ( (error = FUNC5(p,fd,&fp,0)) ) {
		return(error);
	}

	switch (FUNC1(fp->f_fglob)) {
	case DTYPE_PSXSHM:
		error = FUNC8(p, fp, uap->fd, uap->length, retval);
		goto out;
	case DTYPE_VNODE:
		break;
	default:
		error = EINVAL;
		goto out;
	}

	vp = (vnode_t)fp->f_fglob->fg_data;

	if ((fp->f_fglob->fg_flag & FWRITE) == 0) {
		FUNC0(vnpath_withref, vp, ARG_VNODE1);
		error = EINVAL;
		goto out;
	}

	if ((error = FUNC10(vp)) != 0) {
		goto out;
	}

	FUNC0(vnpath, vp, ARG_VNODE1);

#if CONFIG_MACF
	error = mac_vnode_check_truncate(ctx,
	    fp->f_fglob->fg_cred, vp);
	if (error) {
		(void)vnode_put(vp);
		goto out;
	}
#endif
	FUNC2(&va);
	FUNC3(&va, va_data_size, uap->length);
	error = FUNC12(vp, &va, ctx);

#if CONFIG_MACF
	if (error == 0)
		mac_vnode_notify_truncate(ctx, fp->f_fglob->fg_cred, vp);
#endif

	(void)FUNC11(vp);
out:
	FUNC4(fd);
	return (error);
}