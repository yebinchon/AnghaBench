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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct ifnet {int dummy; } ;
struct if_nsreq {int ifnsr_len; int /*<<< orphan*/  ifnsr_flags; int /*<<< orphan*/  ifnsr_data; int /*<<< orphan*/  ifnsr_family; } ;
typedef  int /*<<< orphan*/  flags ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SIOCGIFNETSIGNATURE 129 
#define  SIOCSIFNETSIGNATURE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC4(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct if_nsreq *ifnsr = (struct if_nsreq *)(void *)data;
	u_int16_t flags;
	int error = 0;

	FUNC0(ifp != NULL);

	switch (cmd) {
	case SIOCSIFNETSIGNATURE:		/* struct if_nsreq */
		if (ifnsr->ifnsr_len > sizeof (ifnsr->ifnsr_data)) {
			error = EINVAL;
			break;
		}
		FUNC1(&ifnsr->ifnsr_flags, &flags, sizeof (flags));
		error = FUNC3(ifp, ifnsr->ifnsr_family,
		    ifnsr->ifnsr_len, flags, ifnsr->ifnsr_data);
		break;

	case SIOCGIFNETSIGNATURE:		/* struct if_nsreq */
		ifnsr->ifnsr_len = sizeof (ifnsr->ifnsr_data);
		error = FUNC2(ifp, ifnsr->ifnsr_family,
		    &ifnsr->ifnsr_len, &flags, ifnsr->ifnsr_data);
		if (error == 0)
			FUNC1(&flags, &ifnsr->ifnsr_flags, sizeof (flags));
		else
			ifnsr->ifnsr_len = 0;
		break;

	default:
		FUNC0(0);
		/* NOTREACHED */
	}

	return (error);
}