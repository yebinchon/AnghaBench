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
struct in_ifaddr_dbg {int /*<<< orphan*/  inifa_alloc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifa_detached; int /*<<< orphan*/  ifa_attached; int /*<<< orphan*/  ifa_trace; int /*<<< orphan*/  ifa_debug; int /*<<< orphan*/  ifa_free; } ;
struct in_ifaddr {TYPE_1__ ia_ifa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ALLOC ; 
 int /*<<< orphan*/  IFD_DEBUG ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct in_ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  in_ifaddr_attached ; 
 int /*<<< orphan*/  in_ifaddr_detached ; 
 int /*<<< orphan*/  in_ifaddr_free ; 
 int /*<<< orphan*/  in_ifaddr_trace ; 
 scalar_t__ inifa_debug ; 
 int /*<<< orphan*/  inifa_size ; 
 int /*<<< orphan*/  inifa_zone ; 
 struct in_ifaddr* FUNC3 (int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct in_ifaddr *
FUNC5(int how)
{
	struct in_ifaddr *inifa;

	inifa = (how == M_WAITOK) ? FUNC3(inifa_zone) :
	    FUNC4(inifa_zone);
	if (inifa != NULL) {
		FUNC0(inifa, inifa_size);
		inifa->ia_ifa.ifa_free = in_ifaddr_free;
		inifa->ia_ifa.ifa_debug |= IFD_ALLOC;
		FUNC2(&inifa->ia_ifa);
		if (inifa_debug != 0) {
			struct in_ifaddr_dbg *inifa_dbg =
			    (struct in_ifaddr_dbg *)inifa;
			inifa->ia_ifa.ifa_debug |= IFD_DEBUG;
			inifa->ia_ifa.ifa_trace = in_ifaddr_trace;
			inifa->ia_ifa.ifa_attached = in_ifaddr_attached;
			inifa->ia_ifa.ifa_detached = in_ifaddr_detached;
			FUNC1(&inifa_dbg->inifa_alloc);
		}
	}
	return (inifa);
}