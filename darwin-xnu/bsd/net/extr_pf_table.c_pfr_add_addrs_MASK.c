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
typedef  int /*<<< orphan*/  u_int64_t ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {scalar_t__ pfrke_not; } ;
struct pfr_addr {scalar_t__ pfra_not; void* pfra_fback; } ;
typedef  int /*<<< orphan*/  ad ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,struct pfr_addr*,int,int) ; 
 scalar_t__ FUNC2 (struct pfr_addr*,int,int,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int ESRCH ; 
 void* PFR_FB_ADDED ; 
 void* PFR_FB_CONFLICT ; 
 void* PFR_FB_DUPLICATE ; 
 void* PFR_FB_NONE ; 
 int PFR_FLAG_ATOMIC ; 
 int PFR_FLAG_DUMMY ; 
 int PFR_FLAG_FEEDBACK ; 
 int PFR_FLAG_USERIOCTL ; 
 int PFR_TFLAG_ACTIVE ; 
 int PFR_TFLAG_CONST ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_kentryworkq*,struct pfr_kentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 
 struct pfr_kentry* FUNC7 (struct pfr_addr*,int) ; 
 struct pfr_ktable* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC10 (struct pfr_kentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct pfr_ktable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pfr_ktable*,struct pfr_kentryworkq*,int /*<<< orphan*/ ) ; 
 struct pfr_kentry* FUNC13 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 struct pfr_ktable* FUNC14 (struct pfr_table*) ; 
 int /*<<< orphan*/  pfr_nulltable ; 
 int /*<<< orphan*/  FUNC15 (int,int,int) ; 
 scalar_t__ FUNC16 (struct pfr_ktable*,struct pfr_kentry*) ; 
 scalar_t__ FUNC17 (struct pfr_addr*) ; 
 scalar_t__ FUNC18 (struct pfr_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfrke_workq ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

int
FUNC20(struct pfr_table *tbl, user_addr_t _addr, int size,
    int *nadd, int flags)
{
	struct pfr_ktable	*kt, *tmpkt;
	struct pfr_kentryworkq	 workq;
	struct pfr_kentry	*p, *q;
	struct pfr_addr		 ad;
	int			 i, rv, xadd = 0;
	user_addr_t		 addr = _addr;
	u_int64_t		 tzero = FUNC5();

	FUNC0(flags, PFR_FLAG_ATOMIC | PFR_FLAG_DUMMY |
	    PFR_FLAG_FEEDBACK);
	if (FUNC18(tbl, 0, flags & PFR_FLAG_USERIOCTL))
		return (EINVAL);
	kt = FUNC14(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	if (kt->pfrkt_flags & PFR_TFLAG_CONST)
		return (EPERM);
	tmpkt = FUNC8(&pfr_nulltable, 0, 0);
	if (tmpkt == NULL)
		return (ENOMEM);
	FUNC3(&workq);
	for (i = 0; i < size; i++, addr += sizeof (ad)) {
		if (FUNC1(addr, &ad, sizeof (ad), flags))
			FUNC19(EFAULT);
		if (FUNC17(&ad))
			FUNC19(EINVAL);
		p = FUNC13(kt, &ad, 1);
		q = FUNC13(tmpkt, &ad, 1);
		if (flags & PFR_FLAG_FEEDBACK) {
			if (q != NULL)
				ad.pfra_fback = PFR_FB_DUPLICATE;
			else if (p == NULL)
				ad.pfra_fback = PFR_FB_ADDED;
			else if (p->pfrke_not != ad.pfra_not)
				ad.pfra_fback = PFR_FB_CONFLICT;
			else
				ad.pfra_fback = PFR_FB_NONE;
		}
		if (p == NULL && q == NULL) {
			p = FUNC7(&ad,
			    !(flags & PFR_FLAG_USERIOCTL));
			if (p == NULL)
				FUNC19(ENOMEM);
			if (FUNC16(tmpkt, p)) {
				FUNC10(p);
				ad.pfra_fback = PFR_FB_NONE;
			} else {
				FUNC4(&workq, p, pfrke_workq);
				xadd++;
			}
		}
		if (flags & PFR_FLAG_FEEDBACK)
			if (FUNC2(&ad, addr, sizeof (ad), flags))
				FUNC19(EFAULT);
	}
	FUNC6(tmpkt, &workq);
	if (!(flags & PFR_FLAG_DUMMY)) {
		FUNC12(kt, &workq, tzero);
	} else
		FUNC9(&workq);
	if (nadd != NULL)
		*nadd = xadd;
	FUNC11(tmpkt, 0);
	return (0);
_bad:
	FUNC6(tmpkt, &workq);
	FUNC9(&workq);
	if (flags & PFR_FLAG_FEEDBACK)
		FUNC15(_addr, size, flags);
	FUNC11(tmpkt, 0);
	return (rv);
}