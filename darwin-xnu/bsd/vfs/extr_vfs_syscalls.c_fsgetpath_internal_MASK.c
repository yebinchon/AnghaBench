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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int user_ssize_t ;
typedef  int uint64_t ;
struct mount {int mnt_flag; int /*<<< orphan*/  mnt_vnodecovered; } ;
typedef  int /*<<< orphan*/  ino64_t ;
typedef  int /*<<< orphan*/  dbg_parms ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int BUILDPATH_CHECKACCESS ; 
 int BUILDPATH_CHECK_MOVED ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  KDBG_VFS_LOOKUP_FLAG_LOOKUP ; 
 int /*<<< orphan*/  LK_NOWAIT ; 
 int MNT_UNION ; 
 int NUMPARMS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct mount*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ kdebug_enable ; 
 int /*<<< orphan*/  FUNC4 (long*,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 struct mount* FUNC8 (int,int) ; 
 int /*<<< orphan*/  text ; 
 scalar_t__ FUNC9 (struct mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 
 struct mount* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(
	vfs_context_t ctx, int volfs_id, uint64_t objid,
	vm_size_t bufsize, caddr_t buf, int *pathlen)
{
	int error;
	struct mount *mp = NULL;
	vnode_t vp;
	int length;
	int bpflags;
	/* maximum number of times to retry build_path */
	unsigned int retries = 0x10;

	if (bufsize > PAGE_SIZE) {
		return (EINVAL);
	}

	if (buf == NULL) {
		return (ENOMEM);
	}

retry:
	if ((mp = FUNC8(volfs_id, 1)) == NULL) {
		error = ENOTSUP;  /* unexpected failure */
		return ENOTSUP;
	}

unionget:
	if (objid == 2) {
		error = FUNC1(mp, &vp, ctx);
	} else {
		error = FUNC2(mp, (ino64_t)objid, &vp, ctx);
	}

	if (error == ENOENT && (mp->mnt_flag & MNT_UNION)) {
		/*
		 * If the fileid isn't found and we're in a union
		 * mount volume, then see if the fileid is in the
		 * mounted-on volume.
		 */
		struct mount *tmp = mp;
		mp = FUNC12(tmp->mnt_vnodecovered);
		FUNC11(tmp);
		if (FUNC9(mp, LK_NOWAIT) == 0)
			goto unionget;
	} else {
		FUNC11(mp);
	}

	if (error) {
		return error;
	}

#if CONFIG_MACF
	error = mac_vnode_check_fsgetpath(ctx, vp);
	if (error) {
		vnode_put(vp);
		return error;
	}
#endif

	/* Obtain the absolute path to this vnode. */
	bpflags = FUNC10(ctx) ? BUILDPATH_CHECKACCESS : 0;
	bpflags |= BUILDPATH_CHECK_MOVED;
	error = FUNC3(vp, buf, bufsize, &length, bpflags, ctx);
	FUNC13(vp);

	if (error) {
		/* there was a race building the path, try a few more times */
		if (error == EAGAIN) {
			--retries;
			if (retries > 0)
				goto retry;

			error = ENOENT;
		}
		goto out;
	}

	FUNC0(text, buf);

	if (kdebug_enable) {
		long dbg_parms[NUMPARMS];
		int  dbg_namelen;

		dbg_namelen = (int)sizeof(dbg_parms);

        if (length < dbg_namelen) {
			FUNC6((char *)dbg_parms, buf, length);
			FUNC7((char *)dbg_parms + length, 0, dbg_namelen - length);

			dbg_namelen = length;
		} else {
			FUNC6((char *)dbg_parms, buf + (length - dbg_namelen), dbg_namelen);
		}

		FUNC4(dbg_parms, dbg_namelen, (void *)vp,
				KDBG_VFS_LOOKUP_FLAG_LOOKUP);
	}

	*pathlen = (user_ssize_t)length; /* may be superseded by error */

out:
	return (error);
}