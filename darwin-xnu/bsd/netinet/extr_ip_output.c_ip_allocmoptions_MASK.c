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
struct ip_moptions {int /*<<< orphan*/  imo_trace; int /*<<< orphan*/  imo_debug; int /*<<< orphan*/  imo_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ALLOC ; 
 int /*<<< orphan*/  IFD_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct ip_moptions*) ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct ip_moptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifa_mtx_attr ; 
 int /*<<< orphan*/  ifa_mtx_grp ; 
 scalar_t__ imo_debug ; 
 int /*<<< orphan*/  imo_size ; 
 int /*<<< orphan*/  imo_trace ; 
 int /*<<< orphan*/  imo_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_moptions* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ip_moptions* FUNC4 (int /*<<< orphan*/ ) ; 

struct ip_moptions *
FUNC5(int how)
{
	struct ip_moptions *imo;

	imo = (how == M_WAITOK) ? FUNC3(imo_zone) : FUNC4(imo_zone);
	if (imo != NULL) {
		FUNC1(imo, imo_size);
		FUNC2(&imo->imo_lock, ifa_mtx_grp, ifa_mtx_attr);
		imo->imo_debug |= IFD_ALLOC;
		if (imo_debug != 0) {
			imo->imo_debug |= IFD_DEBUG;
			imo->imo_trace = imo_trace;
		}
		FUNC0(imo);
	}

	return (imo);
}