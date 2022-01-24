#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfsmount {int nm_stategenid; scalar_t__ nm_stateinuse; int nm_state; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_mountp; } ;
struct TYPE_2__ {char* f_mntfromname; } ;

/* Variables and functions */
 int NFSERR_GRACE ; 
 int NFSERR_OLD_STATEID ; 
 int NFSSTA_RECOVER ; 
 scalar_t__ PZERO ; 
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsmount*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,scalar_t__,char*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 

int
FUNC10(struct nfsmount *nmp, int error)
{
	int restart = FUNC3(error);

	if (FUNC2(nmp))
		return (restart);
	FUNC0(&nmp->nm_lock);
	if (restart && (error != NFSERR_OLD_STATEID) && (error != NFSERR_GRACE)) {
		FUNC6("nfs_mount_state_in_use_end: error %d, initiating recovery for %s, 0x%x\n",
			error, FUNC8(nmp->nm_mountp)->f_mntfromname, nmp->nm_stategenid);
		FUNC4(nmp, error);
	}
	if (nmp->nm_stateinuse > 0)
		nmp->nm_stateinuse--;
	else
		FUNC5("NFS mount state in use count underrun");
	if (!nmp->nm_stateinuse && (nmp->nm_state & NFSSTA_RECOVER))
		FUNC9(&nmp->nm_stateinuse);
	FUNC1(&nmp->nm_lock);
	if (error == NFSERR_GRACE)
		FUNC7(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);

	return (restart);
}