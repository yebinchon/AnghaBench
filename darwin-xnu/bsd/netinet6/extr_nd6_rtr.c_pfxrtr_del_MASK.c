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
struct nd_prefix {int /*<<< orphan*/  ndpr_genid; } ;
struct nd_pfxrouter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  ndprtr_zone ; 
 int /*<<< orphan*/  pfr_entry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nd_pfxrouter*) ; 

__attribute__((used)) static void
FUNC4(struct nd_pfxrouter *pfr, struct nd_prefix *pr)
{
	FUNC0(nd6_mutex, LCK_MTX_ASSERT_OWNED);
	FUNC2(pr);
	pr->ndpr_genid++;
	FUNC1(pfr, pfr_entry);
	FUNC3(ndprtr_zone, pfr);
}