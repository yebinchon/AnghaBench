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
struct nd_prefix {int /*<<< orphan*/  ndpr_genid; int /*<<< orphan*/  ndpr_advrtrs; } ;
struct nd_pfxrouter {struct nd_defrouter* router; } ;
struct nd_defrouter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_pfxrouter*,int) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  ndprtr_zone ; 
 int /*<<< orphan*/  pfr_entry ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct nd_pfxrouter* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct nd_prefix *pr, struct nd_defrouter *dr)
{
	struct nd_pfxrouter *new;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_OWNED);
	FUNC3(pr);

	new = FUNC7(ndprtr_zone);
	if (new == NULL)
		return;
	FUNC5(new, sizeof (*new));
	new->router = dr;

	FUNC2(pr);
	FUNC1(&pr->ndpr_advrtrs, new, pfr_entry);
	pr->ndpr_genid++;
	FUNC4(pr);

	FUNC6();
}