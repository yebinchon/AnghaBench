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
struct proc {int dummy; } ;
struct ifnet {int dummy; } ;
struct if_agentidsreq64 {int /*<<< orphan*/  ifar_uuids; int /*<<< orphan*/  ifar_count; } ;
struct if_agentidsreq32 {int /*<<< orphan*/  ifar_uuids; int /*<<< orphan*/  ifar_count; } ;
struct if_agentidreq {int /*<<< orphan*/  ifar_uuid; } ;
typedef  struct if_agentidsreq64* caddr_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCAIFAGENTID 131 
#define  SIOCDIFAGENTID 130 
#define  SIOCGIFAGENTIDS32 129 
#define  SIOCGIFAGENTIDS64 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct if_agentidsreq64*,struct if_agentidsreq64*,int) ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ifnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int FUNC10 (struct proc*) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC11(struct ifnet *ifp, u_long cmd, caddr_t data, struct proc *p)
{
	struct if_agentidreq *ifar = (struct if_agentidreq *)(void *)data;
	union {
		struct if_agentidsreq32 s32;
		struct if_agentidsreq64 s64;
	} u;
	int error = 0;

	FUNC0(ifp != NULL);

	/* Get an io ref count if the interface is attached */
	if (!FUNC6(ifp, 1)) {
		return (EOPNOTSUPP);
	}

	if (cmd == SIOCAIFAGENTID ||
		cmd == SIOCDIFAGENTID) {
		FUNC8(ifp);
	} else {
		FUNC9(ifp);
	}

	switch (cmd) {
		case SIOCAIFAGENTID: {		/* struct if_agentidreq */
			// TODO: Use priv_check_cred() instead of root check
			if ((error = FUNC10(p)) != 0) {
				break;
			}
			error = FUNC2(ifp, ifar->ifar_uuid);
			break;
		}
		case SIOCDIFAGENTID: {			/* struct if_agentidreq */
			// TODO: Use priv_check_cred() instead of root check
			if ((error = FUNC10(p)) != 0) {
				break;
			}
			error = FUNC3(ifp, ifar->ifar_uuid);
			break;
		}
		case SIOCGIFAGENTIDS32: {	/* struct if_agentidsreq32 */
			FUNC1(data, &u.s32, sizeof(u.s32));
			error = FUNC4(ifp, &u.s32.ifar_count,
			    u.s32.ifar_uuids);
			if (error == 0) {
				FUNC1(&u.s32, data, sizeof(u.s32));
			}
			break;
		}
		case SIOCGIFAGENTIDS64: {	/* struct if_agentidsreq64 */
			FUNC1(data, &u.s64, sizeof(u.s64));
			error = FUNC4(ifp, &u.s64.ifar_count,
			    u.s64.ifar_uuids);
			if (error == 0) {
				FUNC1(&u.s64, data, sizeof(u.s64));
			}
			break;
		}
		default:
			FUNC0(0);
			/* NOTREACHED */
	}

	FUNC7(ifp);
	FUNC5(ifp);

	return (error);
}