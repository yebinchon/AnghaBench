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
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {scalar_t__ nm_asyncwrites; int /*<<< orphan*/  nm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int PZERO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 scalar_t__ nfs_max_async_writes ; 
 int FUNC5 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct nfsmount *nmp)
{
	int error = 0, slpflag = FUNC0(nmp, INTR) ? PCATCH : 0;
	struct timespec ts = {1, 0};

	if (nfs_max_async_writes <= 0)
		return (0);
	FUNC2(&nmp->nm_lock);
	while ((nfs_max_async_writes > 0) && (nmp->nm_asyncwrites >= nfs_max_async_writes)) {
		if ((error = FUNC5(nmp, NULL, FUNC1(), 1)))
			break;
		FUNC4(&nmp->nm_asyncwrites, &nmp->nm_lock, slpflag|(PZERO-1), "nfsasyncwrites", &ts);
		slpflag = 0;
	}
	if (!error)
		nmp->nm_asyncwrites++;
	FUNC3(&nmp->nm_lock);
	return (error);
}