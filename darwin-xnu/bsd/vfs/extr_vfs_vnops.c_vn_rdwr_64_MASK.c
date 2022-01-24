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
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  scalar_t__ int64_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  enum uio_rw { ____Placeholder_uio_rw } uio_rw ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int IO_NOAUTH ; 
 int IO_SKIP_ENCRYPTION ; 
 int IO_SWAP_DISPATCH ; 
 int UIO_READ ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int UIO_SYSSPACE ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int,struct vfs_context*) ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ ,int,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct vfs_context*,int /*<<< orphan*/ ,struct vnode*) ; 
 int FUNC6 (struct vfs_context*,int /*<<< orphan*/ ,struct vnode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct vnode*) ; 

int
FUNC13(
	enum uio_rw rw,
	struct vnode *vp,
	uint64_t base,
	int64_t len,
	off_t offset,
	enum uio_seg segflg,
	int ioflg,
	kauth_cred_t cred,
	int64_t *aresid,
	proc_t p)
{
	uio_t auio;
	int spacetype;
	struct vfs_context context;
	int error=0;
	char uio_buf[ FUNC1(1) ];

	context.vc_thread = FUNC4();
	context.vc_ucred = cred;

	if (FUNC0(segflg)) {
		spacetype = FUNC7(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	}
	else {
		spacetype = UIO_SYSSPACE;
	}
	auio = FUNC9(1, offset, spacetype, rw, 
								  &uio_buf[0], sizeof(uio_buf));
	FUNC8(auio, base, len);

#if CONFIG_MACF
	/* XXXMAC
	 * 	IO_NOAUTH should be re-examined.
 	 *	Likely that mediation should be performed in caller.
	 */
	if ((ioflg & IO_NOAUTH) == 0) {
	/* passed cred is fp->f_cred */
		if (rw == UIO_READ)
			error = mac_vnode_check_read(&context, cred, vp);
		else
			error = mac_vnode_check_write(&context, cred, vp);
	}
#endif

	if (error == 0) {
		if (rw == UIO_READ) {
			if (FUNC12(vp) && ((ioflg & IO_SWAP_DISPATCH) == 0)) {
				error = FUNC11(vp, auio);
			} else {
				error = FUNC2(vp, auio, ioflg, &context);
			}
		} else {

#if DEVELOPMENT || DEBUG
			/*
	 		 * XXX VSWAP: Check for entitlements or special flag here
	 		 * so we can restrict access appropriately.
	 		 */
			error = VNOP_WRITE(vp, auio, ioflg, &context);
#else /* DEVELOPMENT || DEBUG */

			if (FUNC12(vp) && ((ioflg & (IO_SWAP_DISPATCH | IO_SKIP_ENCRYPTION)) == 0)) {
				error = EPERM;
			} else {
				error = FUNC3(vp, auio, ioflg, &context);
			}
#endif /* DEVELOPMENT || DEBUG */
		}
	}

	if (aresid)
		*aresid = FUNC10(auio);
	else
		if (FUNC10(auio) && error == 0)
			error = EIO;
	return (error);
}