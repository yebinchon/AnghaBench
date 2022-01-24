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
struct in6_ifaddr_dbg {int /*<<< orphan*/  in6ifa_alloc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifa_detached; int /*<<< orphan*/  ifa_attached; int /*<<< orphan*/  ifa_trace; int /*<<< orphan*/  ifa_debug; int /*<<< orphan*/  ifa_free; } ;
struct in6_ifaddr {TYPE_1__ ia_ifa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ALLOC ; 
 int /*<<< orphan*/  IFD_DEBUG ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct in6_ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  in6_ifaddr_attached ; 
 int /*<<< orphan*/  in6_ifaddr_detached ; 
 int /*<<< orphan*/  in6_ifaddr_free ; 
 int /*<<< orphan*/  in6_ifaddr_trace ; 
 scalar_t__ in6ifa_debug ; 
 int /*<<< orphan*/  in6ifa_size ; 
 int /*<<< orphan*/  in6ifa_zone ; 
 struct in6_ifaddr* FUNC3 (int /*<<< orphan*/ ) ; 
 struct in6_ifaddr* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct in6_ifaddr *
FUNC5(int how)
{
	struct in6_ifaddr *in6ifa;

	in6ifa = (how == M_WAITOK) ? FUNC3(in6ifa_zone) :
	    FUNC4(in6ifa_zone);
	if (in6ifa != NULL) {
		FUNC0(in6ifa, in6ifa_size);
		in6ifa->ia_ifa.ifa_free = in6_ifaddr_free;
		in6ifa->ia_ifa.ifa_debug |= IFD_ALLOC;
		FUNC2(&in6ifa->ia_ifa);
		if (in6ifa_debug != 0) {
			struct in6_ifaddr_dbg *in6ifa_dbg =
			    (struct in6_ifaddr_dbg *)in6ifa;
			in6ifa->ia_ifa.ifa_debug |= IFD_DEBUG;
			in6ifa->ia_ifa.ifa_trace = in6_ifaddr_trace;
			in6ifa->ia_ifa.ifa_attached = in6_ifaddr_attached;
			in6ifa->ia_ifa.ifa_detached = in6_ifaddr_detached;
			FUNC1(&in6ifa_dbg->in6ifa_alloc);
		}
	}

	return (in6ifa);
}