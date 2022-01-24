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
struct domain_old {int /*<<< orphan*/ * dom_mtx; int /*<<< orphan*/ * dom_next; } ;
struct domain {int dom_flags; struct domain_old* dom_old; } ;

/* Variables and functions */
 int DOM_ATTACHED ; 
 int DOM_OLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dom_entry ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  domains ; 

__attribute__((used)) static void
FUNC3(struct domain *dp)
{
	FUNC2();
	FUNC1(dp->dom_flags & DOM_ATTACHED);

	FUNC0(&domains, dp, dom_entry);
	dp->dom_flags &= ~DOM_ATTACHED;

	if (dp->dom_flags & DOM_OLD) {
		struct domain_old *odp = dp->dom_old;

		FUNC1(odp != NULL);
		odp->dom_next = NULL;
		odp->dom_mtx = NULL;
	}
}