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
typedef  int /*<<< orphan*/  thread_t ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {int nm_state; int nm_mounterror; int /*<<< orphan*/  nm_lock; scalar_t__ nm_nss; int /*<<< orphan*/  nm_sockflags; int /*<<< orphan*/  nm_mountp; } ;
struct TYPE_2__ {char* f_mntfromname; } ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  INTR ; 
 scalar_t__ KERN_SUCCESS ; 
 int NFSSTA_MOUNT_THREAD ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NMSOCK_UNMOUNT ; 
 int PCATCH ; 
 int PSOCK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct nfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  nfs_mount_connect_thread ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

int
FUNC11(struct nfsmount *nmp)
{
	int error = 0, slpflag;
	thread_t thd;
	struct timespec ts = { 2, 0 };

	/*
	 * Set up the socket.  Perform initial search for a location/server/address to
	 * connect to and negotiate any unspecified mount parameters.  This work is
	 * done on a kernel thread to satisfy reserved port usage needs.
	 */
	slpflag = FUNC0(nmp, INTR) ? PCATCH : 0;
	FUNC3(&nmp->nm_lock);
	/* set flag that the thread is running */
	nmp->nm_state |= NFSSTA_MOUNT_THREAD;
	if (FUNC2(nfs_mount_connect_thread, nmp, &thd) != KERN_SUCCESS) {
		nmp->nm_state &= ~NFSSTA_MOUNT_THREAD;
		nmp->nm_mounterror = EIO;
		FUNC7("nfs mount %s start socket connect thread failed\n", FUNC9(nmp->nm_mountp)->f_mntfromname);
	} else {
		FUNC8(thd);
	}

	/* wait until mount connect thread is finished/gone */
	while (nmp->nm_state & NFSSTA_MOUNT_THREAD) {
		error = FUNC5(&nmp->nm_nss, &nmp->nm_lock, slpflag|PSOCK, "nfsconnectthread", &ts);
		if ((error && (error != EWOULDBLOCK)) || ((error = FUNC6(nmp, NULL, FUNC1(), 1)))) {
			/* record error */
			if (!nmp->nm_mounterror)
				nmp->nm_mounterror = error;
			/* signal the thread that we are aborting */
			nmp->nm_sockflags |= NMSOCK_UNMOUNT;
			if (nmp->nm_nss)
				FUNC10(nmp->nm_nss);
			/* and continue waiting on it to finish */
			slpflag = 0;
		}
	}
	FUNC4(&nmp->nm_lock);

	/* grab mount connect status */
	error = nmp->nm_mounterror;

	return (error);
}