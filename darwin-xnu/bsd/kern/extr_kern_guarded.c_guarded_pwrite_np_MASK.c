#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/  uguard ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct proc {int dummy; } ;
struct guarded_pwrite_np_args {int fd; int offset; int /*<<< orphan*/  nbyte; int /*<<< orphan*/  buf; int /*<<< orphan*/  guard; } ;
struct guarded_fileproc {int dummy; } ;
struct fileproc {int f_flag; scalar_t__ f_type; TYPE_1__* f_fglob; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  guardid_t ;
struct TYPE_5__ {int v_flag; } ;
struct TYPE_4__ {scalar_t__ fg_data; int /*<<< orphan*/  fg_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_BSD_SC_EXTENDED_INFO ; 
 int DBG_FUNC_NONE ; 
 scalar_t__ DTYPE_VNODE ; 
 int EBADF ; 
 int EINVAL ; 
 int ENXIO ; 
 int ESPIPE ; 
 int /*<<< orphan*/  FOF_OFFSET ; 
 int FWRITE ; 
 struct fileproc* FUNC2 (struct guarded_fileproc*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_guarded_pwrite_np ; 
 int VISTTY ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct vfs_context*,struct fileproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int,struct fileproc*) ; 
 int FUNC8 (struct proc*,int,int /*<<< orphan*/ ,struct guarded_fileproc**,int /*<<< orphan*/ ) ; 
 struct vfs_context* FUNC9 () ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 

int
 FUNC11(struct proc *p, struct guarded_pwrite_np_args *uap, user_ssize_t *retval)
 {
	struct fileproc *fp;
	int error; 
	int fd = uap->fd;
	vnode_t vp  = (vnode_t)0;
	guardid_t uguard;
	struct guarded_fileproc *gfp;
	bool wrote_some = false;

	FUNC0(fd, fd);

	if ((error = FUNC4(uap->guard, &uguard, sizeof (uguard))) != 0)
		return (error);

	error = FUNC8(p, fd, uguard, &gfp, 0);
	if (error)
		return(error);

	fp = FUNC2(gfp);
	if ((fp->f_flag & FWRITE) == 0) {
		error = EBADF;
	} else {
		struct vfs_context context = *FUNC9();
		context.vc_ucred = fp->f_fglob->fg_cred;

		if (fp->f_type != DTYPE_VNODE) {
			error = ESPIPE;
			goto errout;
		}
		vp = (vnode_t)fp->f_fglob->fg_data;
		if (FUNC10(vp)) {
			error = ESPIPE;
			goto errout;
		} 
		if ((vp->v_flag & VISTTY)) {
			error = ENXIO;
			goto errout;
		}
		if (uap->offset == (off_t)-1) {
			error = EINVAL;
			goto errout;
		}

		error = FUNC5(&context, fp, uap->buf, uap->nbyte,
			uap->offset, FOF_OFFSET, retval);
		wrote_some = *retval > 0;
	}
errout:
	if (wrote_some)
	        FUNC7(p, fd, fp);
	else
	        FUNC6(p, fd, fp, 0);

	FUNC3((FUNC1(DBG_BSD_SC_EXTENDED_INFO, SYS_guarded_pwrite_np) | DBG_FUNC_NONE),
	      uap->fd, uap->nbyte, (unsigned int)((uap->offset >> 32)), (unsigned int)(uap->offset), 0);
	
        return(error);
}