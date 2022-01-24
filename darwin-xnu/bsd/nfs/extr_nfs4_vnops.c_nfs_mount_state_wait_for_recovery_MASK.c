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
struct nfsmount {int nm_state; int /*<<< orphan*/  nm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR ; 
 int NFSSTA_RECOVER ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int PCATCH ; 
 int PZERO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsmount*) ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct nfsmount *nmp)
{
	struct timespec ts = { 1, 0 };
	int error = 0, slpflag = FUNC0(nmp, INTR) ? PCATCH : 0;

	FUNC2(&nmp->nm_lock);
	while (nmp->nm_state & NFSSTA_RECOVER) {
		if ((error = FUNC6(nmp, NULL, FUNC1(), 1)))
			break;
		FUNC5(nmp);
		FUNC4(&nmp->nm_state, &nmp->nm_lock, slpflag|(PZERO-1), "nfsrecoverwait", &ts);
		slpflag = 0;
	}
	FUNC3(&nmp->nm_lock);

	return (error);
}