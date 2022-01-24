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
struct pfr_ktableworkq {int dummy; } ;
struct pfr_ktable {int /*<<< orphan*/  pfrkt_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *,int,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int PFR_FLAG_ADDRSTOO ; 
 int PFR_FLAG_ATOMIC ; 
 int PFR_FLAG_DUMMY ; 
 struct pfr_ktable* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfr_ktable*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_ktableworkq*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_ktableworkq*,struct pfr_ktable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC7 (struct pfr_ktableworkq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfr_ktablehead ; 
 int /*<<< orphan*/  pfr_ktables ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfrkt_workq ; 

int
FUNC10(user_addr_t tbl, int size, int *nzero, int flags)
{
	struct pfr_ktableworkq	 workq;
	struct pfr_ktable	*p, key;
	int			 i, xzero = 0;
	u_int64_t		 tzero = FUNC6();

	FUNC2(pf_lock, LCK_MTX_ASSERT_OWNED);

	FUNC0(flags, PFR_FLAG_ATOMIC | PFR_FLAG_DUMMY |
	    PFR_FLAG_ADDRSTOO);
	FUNC4(&workq);
	for (i = 0; i < size; i++, tbl += sizeof (key.pfrkt_t)) {
		if (FUNC1(tbl, &key.pfrkt_t, sizeof (key.pfrkt_t), flags))
			return (EFAULT);
		FUNC8(&key.pfrkt_t);
		if (FUNC9(&key.pfrkt_t, 0, 0))
			return (EINVAL);
		p = FUNC3(pfr_ktablehead, &pfr_ktables, &key);
		if (p != NULL) {
			FUNC5(&workq, p, pfrkt_workq);
			xzero++;
		}
	}
	if (!(flags & PFR_FLAG_DUMMY)) {
		FUNC7(&workq, tzero, flags & PFR_FLAG_ADDRSTOO);
	}
	if (nzero != NULL)
		*nzero = xzero;
	return (0);
}