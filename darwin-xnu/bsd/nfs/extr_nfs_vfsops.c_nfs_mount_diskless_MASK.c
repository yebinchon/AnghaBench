#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uaddr ;
struct xdrbuf {int /*<<< orphan*/  xb_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct nfs_dlmount {char* ndm_mntfrom; scalar_t__ ndm_sotype; int /*<<< orphan*/  ndm_fhlen; int /*<<< orphan*/ * ndm_fh; TYPE_1__ ndm_saddr; scalar_t__ ndm_nfsv3; } ;
struct mount {int dummy; } ;
typedef  TYPE_3__* mount_t ;
struct TYPE_13__ {int mnt_flag; TYPE_2__* mnt_vtable; } ;
struct TYPE_12__ {int /*<<< orphan*/  vfc_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int MAX_IPv4_STR_LEN ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int NFS_ARGSVERSION_XDR ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int NFS_MATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  NFS_MATTR_FH ; 
 int /*<<< orphan*/  NFS_MATTR_FS_LOCATIONS ; 
 int /*<<< orphan*/  NFS_MATTR_MNTFLAGS ; 
 int /*<<< orphan*/  NFS_MATTR_NFS_PORT ; 
 int /*<<< orphan*/  NFS_MATTR_NFS_VERSION ; 
 int /*<<< orphan*/  NFS_MATTR_SOCKET_TYPE ; 
 int NFS_MFLAG_BITMAP_LEN ; 
 int /*<<< orphan*/  NFS_MFLAG_RESVPORT ; 
 int NFS_XDRARGS_VERSION_0 ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  XB_CLEANUP ; 
 int XDRWORD ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char*,char*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct xdrbuf*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct xdrbuf*,int*,int) ; 
 int /*<<< orphan*/  FUNC16 (int,struct xdrbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,struct xdrbuf*,char*,int) ; 
 char* FUNC18 (struct xdrbuf*) ; 
 int /*<<< orphan*/  FUNC19 (int,struct xdrbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct xdrbuf*) ; 
 int /*<<< orphan*/  FUNC21 (struct xdrbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct xdrbuf*) ; 
 int FUNC23 (struct xdrbuf*,int) ; 

__attribute__((used)) static int
FUNC24(
	struct nfs_dlmount *ndmntp,
	const char *mntname,
	int mntflag,
	vnode_t *vpp,
	mount_t *mpp,
	vfs_context_t ctx)
{
	mount_t mp;
	int error, numcomps;
	char *xdrbuf, *p, *cp, *frompath, *endserverp;
	char uaddr[MAX_IPv4_STR_LEN];
	struct xdrbuf xb;
	uint32_t mattrs[NFS_MATTR_BITMAP_LEN];
	uint32_t mflags_mask[NFS_MFLAG_BITMAP_LEN];
	uint32_t mflags[NFS_MFLAG_BITMAP_LEN];
	uint32_t argslength_offset, attrslength_offset, end_offset;

	if ((error = FUNC12("nfs", ndmntp->ndm_mntfrom, &mp))) {
		FUNC10("nfs_mount_diskless: NFS not configured\n");
		return (error);
	}

	mp->mnt_flag |= mntflag;
	if (!(mntflag & MNT_RDONLY))
		mp->mnt_flag &= ~MNT_RDONLY;

	/* find the server-side path being mounted */
	frompath = ndmntp->ndm_mntfrom;
	if (*frompath == '[') {  /* skip IPv6 literal address */
		while (*frompath && (*frompath != ']'))
			frompath++;
		if (*frompath == ']')
			frompath++;
	}
	while (*frompath && (*frompath != ':'))
		frompath++;
	endserverp = frompath;
	while (*frompath && (*frompath == ':'))
		frompath++;
	/* count fs location path components */
	p = frompath;
	while (*p && (*p == '/'))
		p++;
	numcomps = 0;
	while (*p) {
		numcomps++;
		while (*p && (*p != '/'))
			p++;
		while (*p && (*p == '/'))
			p++;
	}

	/* convert address to universal address string */
	if (FUNC3(AF_INET, &ndmntp->ndm_saddr.sin_addr, uaddr, sizeof(uaddr)) != uaddr) {
		FUNC10("nfs_mount_diskless: bad address\n");
		return (EINVAL);
	}

	/* prepare mount attributes */
	FUNC2(mattrs, NFS_MATTR_BITMAP_LEN);
	FUNC1(mattrs, NFS_MATTR_NFS_VERSION);
	FUNC1(mattrs, NFS_MATTR_SOCKET_TYPE);
	FUNC1(mattrs, NFS_MATTR_NFS_PORT);
	FUNC1(mattrs, NFS_MATTR_FH);
	FUNC1(mattrs, NFS_MATTR_FS_LOCATIONS);
	FUNC1(mattrs, NFS_MATTR_MNTFLAGS);

	/* prepare mount flags */
	FUNC2(mflags_mask, NFS_MFLAG_BITMAP_LEN);
	FUNC2(mflags, NFS_MFLAG_BITMAP_LEN);
	FUNC1(mflags_mask, NFS_MFLAG_RESVPORT);
	FUNC1(mflags, NFS_MFLAG_RESVPORT);

	/* build xdr buffer */
	FUNC21(&xb, NULL, 0);
	FUNC14(error, &xb, NFS_ARGSVERSION_XDR);
	argslength_offset = FUNC22(&xb);
	FUNC14(error, &xb, 0); // args length
	FUNC14(error, &xb, NFS_XDRARGS_VERSION_0);
	FUNC15(error, &xb, mattrs, NFS_MATTR_BITMAP_LEN);
	attrslength_offset = FUNC22(&xb);
	FUNC14(error, &xb, 0); // attrs length
	FUNC14(error, &xb, ndmntp->ndm_nfsv3 ? 3 : 2); // NFS version
	FUNC17(error, &xb, ((ndmntp->ndm_sotype == SOCK_DGRAM) ? "udp" : "tcp"), 3);
	FUNC14(error, &xb, FUNC9(ndmntp->ndm_saddr.sin_port)); // NFS port
	FUNC16(error, &xb, &ndmntp->ndm_fh[0], ndmntp->ndm_fhlen);
	/* fs location */
	FUNC14(error, &xb, 1); /* fs location count */
	FUNC14(error, &xb, 1); /* server count */
	FUNC17(error, &xb, ndmntp->ndm_mntfrom, (endserverp - ndmntp->ndm_mntfrom)); /* server name */
	FUNC14(error, &xb, 1); /* address count */
	FUNC17(error, &xb, uaddr, FUNC11(uaddr)); /* address */
	FUNC14(error, &xb, 0); /* empty server info */
	FUNC14(error, &xb, numcomps); /* pathname component count */
	p = frompath;
	while (*p && (*p == '/'))
		p++;
	while (*p) {
		cp = p;
		while (*p && (*p != '/'))
			p++;
		FUNC17(error, &xb, cp, (p - cp)); /* component */
		if (error)
			break;
		while (*p && (*p == '/'))
			p++;
	}
	FUNC14(error, &xb, 0); /* empty fsl info */
	FUNC14(error, &xb, mntflag); /* MNT flags */
	FUNC19(error, &xb);

	/* update opaque counts */
	end_offset = FUNC22(&xb);
	if (!error) {
		error = FUNC23(&xb, argslength_offset);
		FUNC14(error, &xb, end_offset - argslength_offset + XDRWORD/*version*/);
	}
	if (!error) {
		error = FUNC23(&xb, attrslength_offset);
		FUNC14(error, &xb, end_offset - attrslength_offset - XDRWORD/*don't include length field*/);
	}
	if (error) {
		FUNC10("nfs_mount_diskless: error %d assembling mount args\n", error);
		FUNC20(&xb);
		return (error);
	}
	/* grab the assembled buffer */
	xdrbuf = FUNC18(&xb);
	xb.xb_flags &= ~XB_CLEANUP;

	/* do the mount */
	if ((error = FUNC8(xdrbuf, mp, ctx, vpp))) {
		FUNC10("nfs_mountroot: mount %s failed: %d\n", mntname, error);
		// XXX vfs_rootmountfailed(mp);
		FUNC5();
		mp->mnt_vtable->vfc_refcount--;
		FUNC6();
		FUNC13(mp);
		FUNC7(mp);
#if CONFIG_MACF
		mac_mount_label_destroy(mp);
#endif
		FUNC0(mp, sizeof(struct mount), M_MOUNT);
	} else {
		*mpp = mp;
	}
	FUNC20(&xb);
	return (error);
}