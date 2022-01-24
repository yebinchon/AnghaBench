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
struct nd_prefix {int /*<<< orphan*/  ndpr_trace; int /*<<< orphan*/  ndpr_debug; int /*<<< orphan*/  ndpr_prproxy_sols; int /*<<< orphan*/  ndpr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ALLOC ; 
 int /*<<< orphan*/  IFD_DEBUG ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nd_prefix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifa_mtx_attr ; 
 int /*<<< orphan*/  ifa_mtx_grp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ndpr_debug ; 
 int /*<<< orphan*/  ndpr_size ; 
 int /*<<< orphan*/  ndpr_trace ; 
 int /*<<< orphan*/  ndpr_zone ; 
 struct nd_prefix* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nd_prefix* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nd_prefix *
FUNC5(int how)
{
	struct nd_prefix *pr;

	pr = (how == M_WAITOK) ? FUNC3(ndpr_zone) : FUNC4(ndpr_zone);
	if (pr != NULL) {
		FUNC1(pr, ndpr_size);
		FUNC2(&pr->ndpr_lock, ifa_mtx_grp, ifa_mtx_attr);
		FUNC0(&pr->ndpr_prproxy_sols);
		pr->ndpr_debug |= IFD_ALLOC;
		if (ndpr_debug != 0) {
			pr->ndpr_debug |= IFD_DEBUG;
			pr->ndpr_trace = ndpr_trace;
		}
	}
	return (pr);
}