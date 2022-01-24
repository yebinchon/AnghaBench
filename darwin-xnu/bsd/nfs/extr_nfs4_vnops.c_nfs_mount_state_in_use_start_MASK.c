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
typedef  scalar_t__ thread_t ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {int nm_state; int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_stateinuse; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR ; 
 int NFSSTA_DEAD ; 
 int NFSSTA_FORCE ; 
 int NFSSTA_RECOVER ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int PZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 scalar_t__ FUNC4 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsmount*) ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ *,scalar_t__,int) ; 

int
FUNC7(struct nfsmount *nmp, thread_t thd)
{
	struct timespec ts = { 1, 0 };
	int error = 0, slpflag = (FUNC0(nmp, INTR) && thd) ? PCATCH : 0;

	if (FUNC4(nmp))
		return (ENXIO);
	FUNC1(&nmp->nm_lock);
	if (nmp->nm_state & (NFSSTA_FORCE|NFSSTA_DEAD)) {
		FUNC2(&nmp->nm_lock);
		return (ENXIO);
	}
	while (nmp->nm_state & NFSSTA_RECOVER) {
		if ((error = FUNC6(nmp, NULL, thd, 1)))
			break;
		FUNC5(nmp);
		FUNC3(&nmp->nm_state, &nmp->nm_lock, slpflag|(PZERO-1), "nfsrecoverwait", &ts);
		slpflag = 0;
	}
	if (!error)
		nmp->nm_stateinuse++;
	FUNC2(&nmp->nm_lock);

	return (error);
}