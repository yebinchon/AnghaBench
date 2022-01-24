#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int uint64_t ;
typedef  int uint ;
struct vnop_pathconf_args {int a_name; int* a_retval; int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_vp; } ;
struct nfs_fsattr {int nfsa_flags; int nfsa_maxlink; int nfsa_maxname; int nfsa_maxfilesize; int /*<<< orphan*/  nfsa_bitmap; } ;
struct nfsmount {scalar_t__ nm_vers; int nm_state; int /*<<< orphan*/  nm_lock; struct nfs_fsattr nm_fsattr; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_6__ {int nva_maxlink; int /*<<< orphan*/  nva_bitmap; } ;
struct TYPE_7__ {TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int NFSSTA_GOTPATHCONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_FATTR_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  NFS_FATTR_CASE_PRESERVING ; 
 int /*<<< orphan*/  NFS_FATTR_CHOWN_RESTRICTED ; 
 int /*<<< orphan*/  NFS_FATTR_MAXFILESIZE ; 
 int /*<<< orphan*/  NFS_FATTR_MAXLINK ; 
 int /*<<< orphan*/  NFS_FATTR_MAXNAME ; 
 int /*<<< orphan*/  NFS_FATTR_NO_TRUNC ; 
 int NFS_FSFLAG_CASE_INSENSITIVE ; 
 int NFS_FSFLAG_CASE_PRESERVING ; 
 int NFS_FSFLAG_CHOWN_RESTRICTED ; 
 int NFS_FSFLAG_HOMOGENEOUS ; 
 int NFS_FSFLAG_NAMED_ATTR ; 
 int NFS_FSFLAG_NO_TRUNC ; 
 scalar_t__ NFS_VER2 ; 
 scalar_t__ NFS_VER3 ; 
 scalar_t__ NFS_VER4 ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
#define  _PC_CASE_PRESERVING 135 
#define  _PC_CASE_SENSITIVE 134 
#define  _PC_CHOWN_RESTRICTED 133 
#define  _PC_FILESIZEBITS 132 
#define  _PC_LINK_MAX 131 
#define  _PC_NAME_MAX 130 
#define  _PC_NO_TRUNC 129 
#define  _PC_XATTR_SIZE_BITS 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsmount*,struct nfs_fsattr*) ; 
 int FUNC7 (TYPE_2__*,struct nfs_fsattr*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,struct nfs_fsattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct nfsmount*) ; 

int
FUNC10(
	struct vnop_pathconf_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		int a_name;
		int32_t *a_retval;
		vfs_context_t a_context;
	} */ *ap)
{
	vnode_t vp = ap->a_vp;
	nfsnode_t np = FUNC2(vp);
	struct nfsmount *nmp;
	struct nfs_fsattr nfsa, *nfsap;
	int error = 0;
	uint64_t maxFileSize;
	uint nbits;

	nmp = FUNC3(vp);
	if (FUNC9(nmp))
		return (ENXIO);

	switch (ap->a_name) {
	case _PC_LINK_MAX:
	case _PC_NAME_MAX:
	case _PC_CHOWN_RESTRICTED:
	case _PC_NO_TRUNC:
	case _PC_CASE_SENSITIVE:
	case _PC_CASE_PRESERVING:
		break;
	case _PC_FILESIZEBITS:
		if (nmp->nm_vers == NFS_VER2) {
			*ap->a_retval = 32;
			return (0);
		}
		break;
	case _PC_XATTR_SIZE_BITS:
		/* Do we support xattrs natively? */
		if (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR)
			break;  /* Yes */
		/* No... so just return an error */
		/* FALLTHROUGH */
	default:
		/* don't bother contacting the server if we know the answer */
		return (EINVAL);
	}

	if (nmp->nm_vers == NFS_VER2)
		return (EINVAL);

	FUNC4(&nmp->nm_lock);
	if (nmp->nm_vers == NFS_VER3) {
		if (!(nmp->nm_state & NFSSTA_GOTPATHCONF)) {
			/* no pathconf info cached */
			FUNC5(&nmp->nm_lock);
			FUNC1(nfsa.nfsa_bitmap);
			error = FUNC7(np, &nfsa, ap->a_context);
			if (error)
				return (error);
			nmp = FUNC3(vp);
			if (FUNC9(nmp))
				return (ENXIO);
			FUNC4(&nmp->nm_lock);
			if (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS) {
				/* all files have the same pathconf info, */
				/* so cache a copy of the results */
				FUNC6(nmp, &nfsa);
			}
			nfsap = &nfsa;
		} else {
			nfsap = &nmp->nm_fsattr;
		}
	} else if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS)) {
		/* no pathconf info cached */
		FUNC5(&nmp->nm_lock);
		FUNC1(nfsa.nfsa_bitmap);
		error = FUNC8(np, &nfsa, ap->a_context);
		if (error)
			return (error);
		nmp = FUNC3(vp);
		if (FUNC9(nmp))
			return (ENXIO);
		FUNC4(&nmp->nm_lock);
		nfsap = &nfsa;
	} else {
		nfsap = &nmp->nm_fsattr;
	}

	switch (ap->a_name) {
	case _PC_LINK_MAX:
		if (FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_MAXLINK))
			*ap->a_retval = nfsap->nfsa_maxlink;
		else if ((nmp->nm_vers == NFS_VER4) && FUNC0(np->n_vattr.nva_bitmap, NFS_FATTR_MAXLINK))
			*ap->a_retval = np->n_vattr.nva_maxlink;
		else
			error = EINVAL;
		break;
	case _PC_NAME_MAX:
		if (FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_MAXNAME))
			*ap->a_retval = nfsap->nfsa_maxname;
		else
			error = EINVAL;
		break;
	case _PC_CHOWN_RESTRICTED:
		if (FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_CHOWN_RESTRICTED))
			*ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_CHOWN_RESTRICTED) ? 200112 /* _POSIX_CHOWN_RESTRICTED */ : 0;
		else
			error = EINVAL;
		break;
	case _PC_NO_TRUNC:
		if (FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_NO_TRUNC))
			*ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_NO_TRUNC) ? 200112 /* _POSIX_NO_TRUNC */ : 0;
		else
			error = EINVAL;
		break;
	case _PC_CASE_SENSITIVE:
		if (FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_CASE_INSENSITIVE))
			*ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_CASE_INSENSITIVE) ? 0 : 1;
		else
			error = EINVAL;
		break;
	case _PC_CASE_PRESERVING:
		if (FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_CASE_PRESERVING))
			*ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_CASE_PRESERVING) ? 1 : 0;
		else
			error = EINVAL;
		break;
	case _PC_XATTR_SIZE_BITS: /* same as file size bits if named attrs supported */
	case _PC_FILESIZEBITS:
		if (!FUNC0(nfsap->nfsa_bitmap, NFS_FATTR_MAXFILESIZE)) {
			*ap->a_retval = 64;
			error = 0;
			break;
		}
		maxFileSize = nfsap->nfsa_maxfilesize;
		nbits = 1;
		if (maxFileSize & 0xffffffff00000000ULL) {
			nbits += 32;
			maxFileSize >>= 32;
		}
		if (maxFileSize & 0xffff0000) {
			nbits += 16;
			maxFileSize >>= 16;
		}
		if (maxFileSize & 0xff00) {
			nbits += 8;
			maxFileSize >>= 8;
		}
		if (maxFileSize & 0xf0) {
			nbits += 4;
			maxFileSize >>= 4;
		}
		if (maxFileSize & 0xc) {
			nbits += 2;
			maxFileSize >>= 2;
		}
		if (maxFileSize & 0x2) {
			nbits += 1;
		}
		*ap->a_retval = nbits;
		break;
	default:
		error = EINVAL;
	}

	FUNC5(&nmp->nm_lock);

	return (error);
}