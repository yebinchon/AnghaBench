#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int dummy; } ;
struct uio {int /*<<< orphan*/  uio_offset; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef  scalar_t__ off_t ;
struct TYPE_3__ {int fg_flag; int /*<<< orphan*/  fg_offset; scalar_t__ fg_data; } ;

/* Variables and functions */
 int FENCRYPTED ; 
 int FNOCACHE ; 
 int FNONBLOCK ; 
 int FNORDAHEAD ; 
 int FOF_OFFSET ; 
 int FUNENCRYPTED ; 
 int IO_ENCRYPTED ; 
 int IO_EVTONLY ; 
 int IO_NDELAY ; 
 int IO_NOCACHE ; 
 int IO_RAOFF ; 
 int IO_SKIP_ENCRYPTION ; 
 int IO_SYSCALL_DISPATCH ; 
 int O_EVTONLY ; 
 int FUNC0 (struct vnode*,struct uio*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*) ; 
 scalar_t__ FUNC2 (struct uio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct vnode*,struct uio*) ; 
 int FUNC7 (struct vnode*) ; 
 scalar_t__ FUNC8 (struct vnode*) ; 
 scalar_t__ FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 scalar_t__ FUNC11 (struct vnode*) ; 

__attribute__((used)) static int
FUNC12(struct fileproc *fp, struct uio *uio, int flags, vfs_context_t ctx)
{
	struct vnode *vp;
	int error;
	int ioflag;
	off_t count;
	int offset_locked = 0;

	vp = (struct vnode *)fp->f_fglob->fg_data;
	if ( (error = FUNC7(vp)) ) {
		return(error);
	}

#if CONFIG_MACF
	error = mac_vnode_check_read(ctx, vfs_context_ucred(ctx), vp);
	if (error) {
		(void)vnode_put(vp);
		return (error);
	}
#endif

	/* This signals to VNOP handlers that this read came from a file table read */
	ioflag = IO_SYSCALL_DISPATCH;

	if (fp->f_fglob->fg_flag & FNONBLOCK)
		ioflag |= IO_NDELAY;
	if ((fp->f_fglob->fg_flag & FNOCACHE) || FUNC8(vp))
	    ioflag |= IO_NOCACHE;
	if (fp->f_fglob->fg_flag & FENCRYPTED) {
		ioflag |= IO_ENCRYPTED;
	}
	if (fp->f_fglob->fg_flag & FUNENCRYPTED) {
		ioflag |= IO_SKIP_ENCRYPTION;
	}
	if (fp->f_fglob->fg_flag & O_EVTONLY) {
		ioflag |= IO_EVTONLY;
	}
	if (fp->f_fglob->fg_flag & FNORDAHEAD)
	    ioflag |= IO_RAOFF;

	if ((flags & FOF_OFFSET) == 0) {
		if ((FUNC11(vp) == VREG) && !FUNC9(vp)) {
			FUNC4(fp->f_fglob);
			offset_locked = 1;
		}
		uio->uio_offset = fp->f_fglob->fg_offset;
	}
	count = FUNC2(uio);

	if (FUNC9(vp) && !(IO_SKIP_ENCRYPTION & ioflag)) {

		/* special case for swap files */
		error = FUNC6(vp, uio);
	} else {
		error = FUNC0(vp, uio, ioflag, ctx);
	}

	if ((flags & FOF_OFFSET) == 0) {
		fp->f_fglob->fg_offset += count - FUNC2(uio);
		if (offset_locked) {
			FUNC5(fp->f_fglob);
			offset_locked = 0;
		}
	}

	(void)FUNC10(vp);
	return (error);
}