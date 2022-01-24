#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  struct vnode* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_long ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct getdirentriesattr_args {int fd; int /*<<< orphan*/  basep; int /*<<< orphan*/  newstate; int /*<<< orphan*/  count; scalar_t__ buffersize; scalar_t__ options; int /*<<< orphan*/  buffer; int /*<<< orphan*/  alist; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
struct attrlist {int commonattr; scalar_t__ dirattr; scalar_t__ fileattr; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  newstate ;
typedef  int /*<<< orphan*/  loff ;
typedef  int /*<<< orphan*/  kauth_action_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  count ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  attributelist ;
struct TYPE_4__ {int fg_flag; scalar_t__ fg_offset; scalar_t__ fg_data; } ;
struct TYPE_3__ {int mnt_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int ATTR_CMN_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int EBADF ; 
 int EINVAL ; 
 int FREAD ; 
 int /*<<< orphan*/  KAUTH_VNODE_LIST_DIRECTORY ; 
 int /*<<< orphan*/  KAUTH_VNODE_SEARCH ; 
 int MNT_UNION ; 
 int O_EVTONLY ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC1 (int) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 scalar_t__ VDIR ; 
 int FUNC2 (struct vnode*,struct attrlist*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct fileproc**,struct vnode**) ; 
 scalar_t__ FUNC7 (struct vnode*,struct vnode**,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct vnode*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int,scalar_t__,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct vnode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnpath ; 
 int /*<<< orphan*/  vnpath_withref ; 

int
FUNC22 (proc_t p, struct getdirentriesattr_args *uap, int32_t *retval)
{
	vnode_t vp;
	struct fileproc *fp;
	uio_t auio = NULL;
	int spacetype = FUNC10(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	uint32_t count = 0, savecount = 0;
	uint32_t newstate = 0;
	int error, eofflag;
	uint32_t loff = 0;
	struct attrlist attributelist;
	vfs_context_t ctx = FUNC15();
	int fd = uap->fd;
	char uio_buf[ FUNC1(1) ];
	kauth_action_t action;

	FUNC0(fd, fd);

	/* Get the attributes into kernel space */
	if ((error = FUNC3(uap->alist, (caddr_t)&attributelist, sizeof(attributelist)))) {
		return(error);
	}
	if ((error = FUNC3(uap->count, (caddr_t)&count, sizeof(count)))) {
		return(error);
	}
	savecount = count;
	if ( (error = FUNC6(p, fd, &fp, &vp)) ) {
		return (error);
	}
	if ((fp->f_fglob->fg_flag & FREAD) == 0) {
		FUNC0(vnpath_withref, vp, ARG_VNODE1);
		error = EBADF;
		goto out;
	}


#if CONFIG_MACF
	error = mac_file_check_change_offset(vfs_context_ucred(ctx),
	    fp->f_fglob);
	if (error)
		goto out;
#endif


	if ( (error = FUNC18(vp)) )
		goto out;

	FUNC0(vnpath, vp, ARG_VNODE1);

unionread:
	if (vp->v_type != VDIR) {
		(void)FUNC19(vp);
		error = EINVAL;
		goto out;
	}

#if CONFIG_MACF
	error = mac_vnode_check_readdir(ctx, vp);
	if (error != 0) {
		(void)vnode_put(vp);
		goto out;
	}
#endif /* MAC */

	/* set up the uio structure which will contain the users return buffer */
	loff = fp->f_fglob->fg_offset;
	auio = FUNC12(1, loff, spacetype, UIO_READ, &uio_buf[0], sizeof(uio_buf));
	FUNC11(auio, uap->buffer, uap->buffersize);

	/*
	 * If the only item requested is file names, we can let that past with
	 * just LIST_DIRECTORY.  If they want any other attributes, that means
	 * they need SEARCH as well.
	 */
	action = KAUTH_VNODE_LIST_DIRECTORY;
	if ((attributelist.commonattr & ~ATTR_CMN_NAME) ||
	    attributelist.fileattr || attributelist.dirattr)
		action |= KAUTH_VNODE_SEARCH;

	if ((error = FUNC17(vp, NULL, action, ctx)) == 0) {

		/* Believe it or not, uap->options only has 32-bits of valid
		 * info, so truncate before extending again */

		error = FUNC2(vp, &attributelist, auio, count,
				(u_long)(uint32_t)uap->options, &newstate, &eofflag, &count, ctx);
	}

	if (error) {
		(void) FUNC19(vp);
		goto out;
	}

	/*
	 * If we've got the last entry of a directory in a union mount
	 * then reset the eofflag and pretend there's still more to come.
	 * The next call will again set eofflag and the buffer will be empty,
	 * so traverse to the underlying directory and do the directory
	 * read there.
	 */
	if (eofflag && vp->v_mount->mnt_flag & MNT_UNION) {
		if (FUNC14(auio) < (user_ssize_t) uap->buffersize) { // Got some entries
			eofflag = 0;
		} else {						// Empty buffer
			struct vnode *tvp = vp;
			if (FUNC7(tvp, &vp, ctx) == 0) {
				FUNC20(vp, fp->f_fglob->fg_flag & O_EVTONLY, 0);
				fp->f_fglob->fg_data = (caddr_t) vp;
				fp->f_fglob->fg_offset = 0; // reset index for new dir
				count = savecount;
				FUNC21(tvp, fp->f_fglob->fg_flag & O_EVTONLY, 0, 0);
				FUNC19(tvp);
				goto unionread;
			}
			vp = tvp;
		}
	}

	(void)FUNC19(vp);

	if (error)
		goto out;
	fp->f_fglob->fg_offset = FUNC13(auio); /* should be multiple of dirent, not variable */

	if ((error = FUNC4((caddr_t) &count, uap->count, sizeof(count))))
		goto out;
	if ((error = FUNC4((caddr_t) &newstate, uap->newstate, sizeof(newstate))))
		goto out;
	if ((error = FUNC4((caddr_t) &loff, uap->basep, sizeof(loff))))
		goto out;

	*retval = eofflag;  /* similar to getdirentries */
	error = 0;
out:
	FUNC5(fd);
	return (error); /* return error earlier, an retval of 0 or 1 now */

}