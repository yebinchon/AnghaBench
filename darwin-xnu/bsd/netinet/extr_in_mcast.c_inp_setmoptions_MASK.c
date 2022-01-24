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
typedef  int u_int ;
typedef  int u_char ;
struct sockopt {int sopt_name; int sopt_valsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct ip_moptions {int imo_multicast_ttl; int imo_multicast_loop; TYPE_1__ imo_multicast_addr; struct ifnet* imo_multicast_ifp; } ;
struct inpcb {int /*<<< orphan*/  inp_socket; } ;
struct ifnet {int if_flags; } ;
typedef  int /*<<< orphan*/  ifindex ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (struct ip_moptions*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_moptions*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_moptions*) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ IPPROTO_DIVERT ; 
#define  IP_ADD_MEMBERSHIP 144 
#define  IP_ADD_SOURCE_MEMBERSHIP 143 
#define  IP_BLOCK_SOURCE 142 
#define  IP_DROP_MEMBERSHIP 141 
#define  IP_DROP_SOURCE_MEMBERSHIP 140 
#define  IP_MSFILTER 139 
#define  IP_MULTICAST_IF 138 
#define  IP_MULTICAST_IFINDEX 137 
#define  IP_MULTICAST_LOOP 136 
#define  IP_MULTICAST_TTL 135 
#define  IP_UNBLOCK_SOURCE 134 
#define  MCAST_BLOCK_SOURCE 133 
#define  MCAST_JOIN_GROUP 132 
#define  MCAST_JOIN_SOURCE_GROUP 131 
#define  MCAST_LEAVE_GROUP 130 
#define  MCAST_LEAVE_SOURCE_GROUP 129 
#define  MCAST_UNBLOCK_SOURCE 128 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_RAW ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct inpcb*,struct sockopt*) ; 
 struct ip_moptions* FUNC8 (struct inpcb*) ; 
 int FUNC9 (struct inpcb*,struct sockopt*) ; 
 int FUNC10 (struct inpcb*,struct sockopt*) ; 
 int FUNC11 (struct inpcb*,struct sockopt*) ; 
 int FUNC12 (struct inpcb*,struct sockopt*) ; 
 int FUNC13 (struct sockopt*,...) ; 

int
FUNC14(struct inpcb *inp, struct sockopt *sopt)
{
	struct ip_moptions	*imo;
	int			 error;
	unsigned int		 ifindex;
	struct ifnet		*ifp;

	error = 0;

	/*
	 * If socket is neither of type SOCK_RAW or SOCK_DGRAM,
	 * or is a divert socket, reject it.
	 */
	if (FUNC3(inp->inp_socket) == IPPROTO_DIVERT ||
	    (FUNC4(inp->inp_socket) != SOCK_RAW &&
	     FUNC4(inp->inp_socket) != SOCK_DGRAM))
		return (EOPNOTSUPP);

	switch (sopt->sopt_name) {
	case IP_MULTICAST_IF:
		error = FUNC11(inp, sopt);
		break;

	case IP_MULTICAST_IFINDEX:
		/*
		 * Select the interface for outgoing multicast packets.
		 */
		error = FUNC13(sopt, &ifindex, sizeof (ifindex),
		    sizeof (ifindex));
		if (error)
			break;

		imo = FUNC8(inp);
		if (imo == NULL) {
			error = ENOMEM;
			break;
		}
		/*
		 * Index 0 is used to remove a previous selection.
		 * When no interface is selected, a default one is
		 * chosen every time a multicast packet is sent.
		 */
		if (ifindex == 0) {
			FUNC0(imo);
			imo->imo_multicast_ifp = NULL;
			FUNC2(imo);
			FUNC1(imo);	/* from inp_findmoptions() */
			break;
		}

		FUNC6();
		/* Don't need to check is ifindex is < 0 since it's unsigned */
		if ((unsigned int)if_index < ifindex) {
			FUNC5();
			FUNC1(imo);	/* from inp_findmoptions() */
			error = ENXIO;	/* per IPV6_MULTICAST_IF */
			break;
		}
		ifp = ifindex2ifnet[ifindex];
		FUNC5();

		/* If it's detached or isn't a multicast interface, bail out */
		if (ifp == NULL || !(ifp->if_flags & IFF_MULTICAST)) {
			FUNC1(imo);	/* from inp_findmoptions() */
			error = EADDRNOTAVAIL;
			break;
		}
		FUNC0(imo);
		imo->imo_multicast_ifp = ifp;
		/*
		 * Clear out any remnants of past IP_MULTICAST_IF.  The addr
		 * isn't really used anywhere in the kernel; we could have
		 * iterated thru the addresses of the interface and pick one
		 * here, but that is redundant since ip_getmoptions() already
		 * takes care of that for INADDR_ANY.
		 */
		imo->imo_multicast_addr.s_addr = INADDR_ANY;
		FUNC2(imo);
		FUNC1(imo);	/* from inp_findmoptions() */
		break;

	case IP_MULTICAST_TTL: {
		u_char ttl;

		/*
		 * Set the IP time-to-live for outgoing multicast packets.
		 * The original multicast API required a char argument,
		 * which is inconsistent with the rest of the socket API.
		 * We allow either a char or an int.
		 */
		if (sopt->sopt_valsize == sizeof(u_char)) {
			error = FUNC13(sopt, &ttl, sizeof(u_char),
			    sizeof(u_char));
			if (error)
				break;
		} else {
			u_int ittl;

			error = FUNC13(sopt, &ittl, sizeof(u_int),
			    sizeof(u_int));
			if (error)
				break;
			if (ittl > 255) {
				error = EINVAL;
				break;
			}
			ttl = (u_char)ittl;
		}
		imo = FUNC8(inp);
		if (imo == NULL) {
			error = ENOMEM;
			break;
		}
		FUNC0(imo);
		imo->imo_multicast_ttl = ttl;
		FUNC2(imo);
		FUNC1(imo);	/* from inp_findmoptions() */
		break;
	}

	case IP_MULTICAST_LOOP: {
		u_char loop;

		/*
		 * Set the loopback flag for outgoing multicast packets.
		 * Must be zero or one.  The original multicast API required a
		 * char argument, which is inconsistent with the rest
		 * of the socket API.  We allow either a char or an int.
		 */
		if (sopt->sopt_valsize == sizeof(u_char)) {
			error = FUNC13(sopt, &loop, sizeof(u_char),
			    sizeof(u_char));
			if (error)
				break;
		} else {
			u_int iloop;

			error = FUNC13(sopt, &iloop, sizeof(u_int),
					    sizeof(u_int));
			if (error)
				break;
			loop = (u_char)iloop;
		}
		imo = FUNC8(inp);
		if (imo == NULL) {
			error = ENOMEM;
			break;
		}
		FUNC0(imo);
		imo->imo_multicast_loop = !!loop;
		FUNC2(imo);
		FUNC1(imo);	/* from inp_findmoptions() */
		break;
	}

	case IP_ADD_MEMBERSHIP:
	case IP_ADD_SOURCE_MEMBERSHIP:
	case MCAST_JOIN_GROUP:
	case MCAST_JOIN_SOURCE_GROUP:
		error = FUNC9(inp, sopt);
		break;

	case IP_DROP_MEMBERSHIP:
	case IP_DROP_SOURCE_MEMBERSHIP:
	case MCAST_LEAVE_GROUP:
	case MCAST_LEAVE_SOURCE_GROUP:
		error = FUNC10(inp, sopt);
		break;

	case IP_BLOCK_SOURCE:
	case IP_UNBLOCK_SOURCE:
	case MCAST_BLOCK_SOURCE:
	case MCAST_UNBLOCK_SOURCE:
		error = FUNC7(inp, sopt);
		break;

	case IP_MSFILTER:
		error = FUNC12(inp, sopt);
		break;

	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}