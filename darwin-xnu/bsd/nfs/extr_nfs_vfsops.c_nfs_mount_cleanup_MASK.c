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
struct nfsmount {scalar_t__ nm_vers; scalar_t__ nm_fh; int /*<<< orphan*/  nm_lock; scalar_t__ nm_args; scalar_t__ nm_sprinc; scalar_t__ nm_principal; scalar_t__ nm_realm; int /*<<< orphan*/  nm_locations; int /*<<< orphan*/  nm_mcred; scalar_t__ nm_rqsaddr; scalar_t__ nm_saddr; scalar_t__ nm_state; scalar_t__ nm_ref; TYPE_2__* nm_mountp; scalar_t__ nm_sockflags; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {scalar_t__ mnt_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_mntonname; int /*<<< orphan*/  f_mntfromname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSMNT ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ NFS_VER4 ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_mount_grp ; 
 int /*<<< orphan*/  FUNC9 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

void
FUNC14(struct nfsmount *nmp)
{
	if (!nmp)
		return;

	FUNC9(nmp, 0);

	FUNC3("Unmounting %s from %s\n",
		    FUNC12(nmp->nm_mountp)->f_mntfromname,
		    FUNC12(nmp->nm_mountp)->f_mntonname);
	FUNC3("nfs state = 0x%8.8x\n", nmp->nm_state);
	FUNC3("nfs socket flags = 0x%8.8x\n", nmp->nm_sockflags);
	FUNC3("nfs mount ref count is %d\n", nmp->nm_ref);
	FUNC3("mount ref count is %d\n", nmp->nm_mountp->mnt_count);
	
	if (nmp->nm_mountp)
		FUNC11(nmp->nm_mountp, NULL);

	FUNC6(&nmp->nm_lock);
	if (nmp->nm_ref)
		FUNC10("Some one has grabbed a ref %d state flags = 0x%8.8x\n", nmp->nm_ref, nmp->nm_state);

	if (nmp->nm_saddr)
		FUNC0(nmp->nm_saddr, M_SONAME);
	if ((nmp->nm_vers < NFS_VER4) && nmp->nm_rqsaddr)
		FUNC0(nmp->nm_rqsaddr, M_SONAME);

	if (FUNC2(nmp->nm_mcred))
		FUNC4(&nmp->nm_mcred);

	FUNC8(&nmp->nm_locations);

	if (nmp->nm_realm)
		FUNC0(nmp->nm_realm, M_TEMP);
	if (nmp->nm_principal)
		FUNC0(nmp->nm_principal, M_TEMP);
	if (nmp->nm_sprinc)
		FUNC0(nmp->nm_sprinc, M_TEMP);
	
	if (nmp->nm_args)
		FUNC13(nmp->nm_args);

	FUNC7(&nmp->nm_lock);
	
	FUNC5(&nmp->nm_lock, nfs_mount_grp);
	if (nmp->nm_fh)
		FUNC0(nmp->nm_fh, M_TEMP);
	FUNC1((caddr_t)nmp, sizeof (struct nfsmount), M_NFSMNT);
}