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
struct pfr_kentry {scalar_t__ pfrke_not; } ;
struct pfr_addr {int /*<<< orphan*/  pfra_fback; } ;
typedef  int /*<<< orphan*/  ad ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct pfr_addr*) ; 
 scalar_t__ FUNC2 (int,struct pfr_addr*,int,int) ; 
 scalar_t__ FUNC3 (struct pfr_addr*,int,int,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFR_FB_MATCH ; 
 int /*<<< orphan*/  PFR_FB_NONE ; 
 int /*<<< orphan*/  PFR_FB_NOTMATCH ; 
 int PFR_FLAG_REPLACE ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_addr*,struct pfr_kentry*) ; 
 struct pfr_kentry* FUNC5 (struct pfr_ktable*,struct pfr_addr*,int /*<<< orphan*/ ) ; 
 struct pfr_ktable* FUNC6 (struct pfr_table*) ; 
 scalar_t__ FUNC7 (struct pfr_addr*) ; 
 scalar_t__ FUNC8 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct pfr_table *tbl, user_addr_t addr, int size,
	int *nmatch, int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_kentry	*p;
	struct pfr_addr		 ad;
	int			 i, xmatch = 0;

	FUNC0(flags, PFR_FLAG_REPLACE);
	if (FUNC8(tbl, 0, 0))
		return (EINVAL);
	kt = FUNC6(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);

	for (i = 0; i < size; i++, addr += sizeof (ad)) {
		if (FUNC2(addr, &ad, sizeof (ad), flags))
			return (EFAULT);
		if (FUNC7(&ad))
			return (EINVAL);
		if (FUNC1(&ad))
			return (EINVAL);
		p = FUNC5(kt, &ad, 0);
		if (flags & PFR_FLAG_REPLACE)
			FUNC4(&ad, p);
		ad.pfra_fback = (p == NULL) ? PFR_FB_NONE :
		    (p->pfrke_not ? PFR_FB_NOTMATCH : PFR_FB_MATCH);
		if (p != NULL && !p->pfrke_not)
			xmatch++;
		if (FUNC3(&ad, addr, sizeof (ad), flags))
			return (EFAULT);
	}
	if (nmatch != NULL)
		*nmatch = xmatch;
	return (0);
}