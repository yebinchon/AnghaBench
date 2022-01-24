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
struct ifmultiaddr {int /*<<< orphan*/  ifma_trace; int /*<<< orphan*/  ifma_debug; int /*<<< orphan*/  ifma_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ALLOC ; 
 int /*<<< orphan*/  IFD_DEBUG ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct ifmultiaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifa_mtx_attr ; 
 int /*<<< orphan*/  ifa_mtx_grp ; 
 scalar_t__ ifma_debug ; 
 int /*<<< orphan*/  ifma_size ; 
 int /*<<< orphan*/  ifma_trace ; 
 int /*<<< orphan*/  ifma_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifmultiaddr* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ifmultiaddr* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ifmultiaddr *
FUNC4(int how)
{
	struct ifmultiaddr *ifma;

	ifma = (how == M_WAITOK) ? FUNC2(ifma_zone) :
	    FUNC3(ifma_zone);

	if (ifma != NULL) {
		FUNC0(ifma, ifma_size);
		FUNC1(&ifma->ifma_lock, ifa_mtx_grp, ifa_mtx_attr);
		ifma->ifma_debug |= IFD_ALLOC;
		if (ifma_debug != 0) {
			ifma->ifma_debug |= IFD_DEBUG;
			ifma->ifma_trace = ifma_trace;
		}
	}
	return (ifma);
}