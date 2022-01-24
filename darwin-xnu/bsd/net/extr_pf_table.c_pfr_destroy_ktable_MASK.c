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
struct pfr_ktable {TYPE_1__* pfrkt_rs; struct pfr_ktable* pfrkt_shadow; int /*<<< orphan*/ * pfrkt_ip6; int /*<<< orphan*/ * pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  M_RTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_kentryworkq*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_ktable*,struct pfr_kentryworkq*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfr_ktable_pl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct pfr_ktable*) ; 

__attribute__((used)) static void
FUNC7(struct pfr_ktable *kt, int flushaddr)
{
	struct pfr_kentryworkq	 addrq;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	if (flushaddr) {
		FUNC5(kt, &addrq, NULL, 0);
		FUNC3(kt, &addrq);
		FUNC4(&addrq);
	}
	if (kt->pfrkt_ip4 != NULL)
		FUNC1((caddr_t)kt->pfrkt_ip4, M_RTABLE);
	if (kt->pfrkt_ip6 != NULL)
		FUNC1((caddr_t)kt->pfrkt_ip6, M_RTABLE);
	if (kt->pfrkt_shadow != NULL)
		FUNC7(kt->pfrkt_shadow, flushaddr);
	if (kt->pfrkt_rs != NULL) {
		kt->pfrkt_rs->tables--;
		FUNC2(kt->pfrkt_rs);
	}
	FUNC6(&pfr_ktable_pl, kt);
}