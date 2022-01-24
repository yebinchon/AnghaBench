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
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; } ;
struct pfr_kentryworkq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int PFR_FLAG_ATOMIC ; 
 int PFR_FLAG_DUMMY ; 
 int PFR_FLAG_USERIOCTL ; 
 int PFR_TFLAG_ACTIVE ; 
 int PFR_TFLAG_CONST ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_ktable*,struct pfr_kentryworkq*,int*,int /*<<< orphan*/ ) ; 
 struct pfr_ktable* FUNC2 (struct pfr_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 
 scalar_t__ FUNC4 (struct pfr_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int
FUNC6(struct pfr_table *tbl, int *ndel, int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_kentryworkq	 workq;

	FUNC0(flags, PFR_FLAG_ATOMIC | PFR_FLAG_DUMMY);
	if (FUNC4(tbl, 0, flags & PFR_FLAG_USERIOCTL))
		return (EINVAL);
	kt = FUNC2(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	if (kt->pfrkt_flags & PFR_TFLAG_CONST)
		return (EPERM);
	FUNC1(kt, &workq, ndel, 0);

	if (!(flags & PFR_FLAG_DUMMY)) {
		FUNC3(kt, &workq);
		if (kt->pfrkt_cnt) {
			FUNC5("pfr_clr_addrs: corruption detected (%d).\n",
			    kt->pfrkt_cnt);
			kt->pfrkt_cnt = 0;
		}
	}
	return (0);
}