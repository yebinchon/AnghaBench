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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_OPEN ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 
 int FUNC15 (struct vnode*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(const char *path, void **bufp, size_t *bufszp)
{
	int err = 0;
	struct nameidata ndp = {};
	struct vnode *vp = NULL;
	off_t fsize = 0;
	int resid = 0;
	char *buf = NULL;
	bool doclose = false;

	vfs_context_t ctx = FUNC10();
	proc_t p = FUNC11(ctx);
	kauth_cred_t kerncred = FUNC12(ctx);

	FUNC2(&ndp, LOOKUP, OP_OPEN, LOCKLEAF, UIO_SYSSPACE, FUNC1(path), ctx);
	if ((err = FUNC7(&ndp)) != 0) {
		FUNC0("namei failed (%s)", path);
		goto out;
	}
	FUNC8(&ndp);
	vp = ndp.ni_vp;

	if ((err = FUNC15(vp, &fsize, ctx)) != 0) {
		FUNC0("failed to get vnode size");
		goto out;
	}
	if (fsize < 0) {
		FUNC9("negative file size");
	}

	if ((err = FUNC4(vp, FREAD, ctx)) != 0) {
		FUNC0("failed to open vnode");
		goto out;
	}
	doclose = true;

	/* if bufsz is non-zero, cap the read at bufsz bytes */
	if (*bufszp && *bufszp < (size_t)fsize) {
		fsize = *bufszp;
	}

	buf = FUNC5(fsize);
	if (buf == NULL) {
		err = ENOMEM;
		goto out;
	}

	if ((err = FUNC13(UIO_READ, vp, (caddr_t)buf, fsize, 0, UIO_SYSSPACE, IO_NODELOCKED, kerncred, &resid, p)) != 0) {
		FUNC0("vn_rdwr() failed");
		goto out;
	}

	if (resid) {
		/* didnt get everything we wanted */
		FUNC0("vn_rdwr resid = %d", resid);
		err = EINVAL;
		goto out;
	}

out:
	if (doclose) {
		FUNC3(vp, FREAD, ctx);
	}
	if (vp) {
		FUNC14(vp);
		vp = NULL;
	}

	if (err) {
		FUNC6(buf);
	} else {
		*bufp = buf;
		*bufszp = fsize;
	}

	return err;
}