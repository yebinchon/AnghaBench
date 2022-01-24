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
struct protosw {int pr_flags; struct protosw* pr_protosw; struct domain* pr_domain; } ;
struct domain {int /*<<< orphan*/  dom_protosw; } ;

/* Variables and functions */
 int PR_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct protosw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pr_entry ; 

__attribute__((used)) static void
FUNC3(struct protosw *pp, struct domain *dp)
{
	FUNC2();
	FUNC1(pp->pr_flags & PR_ATTACHED);
	FUNC1(pp->pr_domain == dp);
	FUNC1(pp->pr_protosw == pp);

	FUNC0(&dp->dom_protosw, pp, pr_entry);
	pp->pr_flags &= ~PR_ATTACHED;
	pp->pr_domain = NULL;
	pp->pr_protosw = NULL;
}