#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode_attr {int /*<<< orphan*/  va_flags; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_mountp; } ;
struct nfs_vattr {int /*<<< orphan*/  nva_nlink; int /*<<< orphan*/  nva_gid; int /*<<< orphan*/  nva_uid; int /*<<< orphan*/  nva_mode; int /*<<< orphan*/  nva_fileid; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_8__ {int /*<<< orphan*/ * val; } ;
struct TYPE_10__ {TYPE_1__ f_fsid; } ;
struct TYPE_9__ {scalar_t__ n_evtstamp; int /*<<< orphan*/  n_events; } ;

/* Variables and functions */
 struct nfsmount* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VA_64BITOBJIDS ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct nfs_vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_fileid ; 
 int /*<<< orphan*/  va_fsid ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_nlink ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  FUNC6 (struct vnode_attr*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode_attr*) ; 

void
FUNC9(nfsnode_t np, uint32_t events)
{
	struct nfsmount *nmp = FUNC0(np);
	struct nfs_vattr nvattr;
	struct vnode_attr vattr, *vap = NULL;
	struct timeval now;

	FUNC4(&now);
	if ((np->n_evtstamp == now.tv_sec) || !nmp) {
		/* delay sending this notify */
		np->n_events |= events;
		return;
	}
	events |= np->n_events;
	np->n_events = 0;
	np->n_evtstamp = now.tv_sec;

	FUNC6(&vattr);
	if (!FUNC5(np, &nvattr, 0)) {
		vap = &vattr;
		FUNC2(vap);

		vap->va_flags |= nmp->nm_vers > 2 ? VA_64BITOBJIDS : 0;
		FUNC3(vap, va_fsid, FUNC7(nmp->nm_mountp)->f_fsid.val[0]);
		FUNC3(vap, va_fileid, nvattr.nva_fileid);
		FUNC3(vap, va_mode, nvattr.nva_mode);
		FUNC3(vap, va_uid, nvattr.nva_uid);
		FUNC3(vap, va_gid, nvattr.nva_gid);
		FUNC3(vap, va_nlink, nvattr.nva_nlink);
	}
	FUNC8(FUNC1(np), events, vap);
}