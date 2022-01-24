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
struct protosw_old {int dummy; } ;
struct protosw {int pr_flags; struct protosw_old* pr_old; } ;
typedef  int /*<<< orphan*/  domain_guard_t ;

/* Variables and functions */
 int PR_OLD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct protosw* FUNC2 (int,int,int) ; 

struct protosw_old *
FUNC3(int family, int protocol, int type)
{
	struct protosw_old *opr = NULL;
	struct protosw *pp;
	domain_guard_t guard;

	guard = FUNC0();
	if ((pp = FUNC2(family, protocol, type)) != NULL &&
	    (pp->pr_flags & PR_OLD))
		opr = pp->pr_old;
	FUNC1(guard);
	return (opr);
}