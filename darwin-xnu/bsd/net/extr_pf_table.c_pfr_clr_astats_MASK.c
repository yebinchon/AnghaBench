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
typedef  int user_addr_t ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int /*<<< orphan*/  pfra_fback; } ;
typedef  int /*<<< orphan*/  ad ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,struct pfr_addr*,int,int) ; 
 scalar_t__ FUNC2 (struct pfr_addr*,int,int,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFR_FB_CLEARED ; 
 int /*<<< orphan*/  PFR_FB_NONE ; 
 int PFR_FLAG_ATOMIC ; 
 int PFR_FLAG_DUMMY ; 
 int PFR_FLAG_FEEDBACK ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_kentryworkq*,struct pfr_kentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_kentryworkq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pfr_kentry* FUNC6 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 struct pfr_ktable* FUNC7 (struct pfr_table*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 scalar_t__ FUNC9 (struct pfr_addr*) ; 
 scalar_t__ FUNC10 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfrke_workq ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int
FUNC12(struct pfr_table *tbl, user_addr_t _addr, int size,
    int *nzero, int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_kentryworkq	 workq;
	struct pfr_kentry	*p;
	struct pfr_addr		 ad;
	user_addr_t		 addr = _addr;
	int			 i, rv, xzero = 0;

	FUNC0(flags, PFR_FLAG_ATOMIC | PFR_FLAG_DUMMY |
	    PFR_FLAG_FEEDBACK);
	if (FUNC10(tbl, 0, 0))
		return (EINVAL);
	kt = FUNC7(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	FUNC3(&workq);
	for (i = 0; i < size; i++, addr += sizeof (ad)) {
		if (FUNC1(addr, &ad, sizeof (ad), flags))
			FUNC11(EFAULT);
		if (FUNC9(&ad))
			FUNC11(EINVAL);
		p = FUNC6(kt, &ad, 1);
		if (flags & PFR_FLAG_FEEDBACK) {
			ad.pfra_fback = (p != NULL) ?
			    PFR_FB_CLEARED : PFR_FB_NONE;
			if (FUNC2(&ad, addr, sizeof (ad), flags))
				FUNC11(EFAULT);
		}
		if (p != NULL) {
			FUNC4(&workq, p, pfrke_workq);
			xzero++;
		}
	}

	if (!(flags & PFR_FLAG_DUMMY)) {
		FUNC5(&workq, 0, 0);
	}
	if (nzero != NULL)
		*nzero = xzero;
	return (0);
_bad:
	if (flags & PFR_FLAG_FEEDBACK)
		FUNC8(_addr, size, flags);
	return (rv);
}