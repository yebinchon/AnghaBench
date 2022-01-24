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
typedef  int /*<<< orphan*/  u_int32_t ;
struct proc {int dummy; } ;
struct ifnet {int dummy; } ;
struct if_throttlereq {int /*<<< orphan*/  ifthr_level; } ;
typedef  int /*<<< orphan*/  ifthr_level ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EALREADY ; 
#define  SIOCGIFTHROTTLE 129 
#define  SIOCSIFTHROTTLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct proc*) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC5(struct ifnet *ifp, u_long cmd, caddr_t data, struct proc *p)
{
	struct if_throttlereq *ifthr = (struct if_throttlereq *)(void *)data;
	u_int32_t ifthr_level;
	int error = 0;

	FUNC0(ifp != NULL);

	switch (cmd) {
	case SIOCSIFTHROTTLE: {			/* struct if_throttlereq */
		/*
		 * XXX: Use priv_check_cred() instead of root check?
		 */
		if ((error = FUNC4(p)) != 0)
			break;

		FUNC1(&ifthr->ifthr_level, &ifthr_level, sizeof (ifthr_level));
		error = FUNC3(ifp, ifthr_level);
		if (error == EALREADY)
			error = 0;
		break;
	}

	case SIOCGIFTHROTTLE: {			/* struct if_throttlereq */
		if ((error = FUNC2(ifp, &ifthr_level)) == 0) {
			FUNC1(&ifthr_level, &ifthr->ifthr_level,
			    sizeof (ifthr_level));
		}
		break;
	}

	default:
		FUNC0(0);
		/* NOTREACHED */
	}

	return (error);
}