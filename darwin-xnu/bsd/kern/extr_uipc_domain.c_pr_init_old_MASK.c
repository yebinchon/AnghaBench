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
struct protosw {int pr_flags; TYPE_1__* pr_old; } ;
struct domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pr_init ) () ;} ;

/* Variables and functions */
 int PR_OLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct protosw *pp, struct domain *dp)
{
#pragma unused(dp)
	FUNC0(pp->pr_flags & PR_OLD);
	FUNC0(pp->pr_old != NULL);

	if (pp->pr_old->pr_init != NULL)
		pp->pr_old->pr_init();
}