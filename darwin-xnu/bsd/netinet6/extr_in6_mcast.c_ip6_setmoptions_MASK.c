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
typedef  int u_int ;
struct sockopt {int sopt_name; int sopt_valsize; } ;
struct ip6_moptions {int im6o_multicast_hlim; int im6o_multicast_loop; } ;
struct inpcb {int /*<<< orphan*/  inp_socket; } ;
typedef  int /*<<< orphan*/  hlim ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ip6_moptions*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_moptions*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_moptions*) ; 
 scalar_t__ IPPROTO_DIVERT ; 
#define  IPV6_JOIN_GROUP 139 
#define  IPV6_LEAVE_GROUP 138 
#define  IPV6_MSFILTER 137 
#define  IPV6_MULTICAST_HOPS 136 
#define  IPV6_MULTICAST_IF 135 
#define  IPV6_MULTICAST_LOOP 134 
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
 int FUNC5 (struct inpcb*,struct sockopt*) ; 
 struct ip6_moptions* FUNC6 (struct inpcb*) ; 
 int FUNC7 (struct inpcb*,struct sockopt*) ; 
 int FUNC8 (struct inpcb*,struct sockopt*) ; 
 int FUNC9 (struct inpcb*,struct sockopt*) ; 
 int FUNC10 (struct inpcb*,struct sockopt*) ; 
 int ip6_defmcasthlim ; 
 int FUNC11 (struct sockopt*,int*,int,int) ; 

int
FUNC12(struct inpcb *inp, struct sockopt *sopt)
{
	struct ip6_moptions	*im6o;
	int			 error;

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
	case IPV6_MULTICAST_IF:
		error = FUNC9(inp, sopt);
		break;

	case IPV6_MULTICAST_HOPS: {
		int hlim;

		if (sopt->sopt_valsize != sizeof(int)) {
			error = EINVAL;
			break;
		}
		error = FUNC11(sopt, &hlim, sizeof(hlim), sizeof(int));
		if (error)
			break;
		if (hlim < -1 || hlim > 255) {
			error = EINVAL;
			break;
		} else if (hlim == -1) {
			hlim = ip6_defmcasthlim;
		}
		im6o = FUNC6(inp);
		if (im6o == NULL) {
			error = ENOMEM;
			break;
		}
		FUNC0(im6o);
		im6o->im6o_multicast_hlim = hlim;
		FUNC2(im6o);
		FUNC1(im6o);	/* from in6p_findmoptions() */
		break;
	}

	case IPV6_MULTICAST_LOOP: {
		u_int loop;

		/*
		 * Set the loopback flag for outgoing multicast packets.
		 * Must be zero or one.
		 */
		if (sopt->sopt_valsize != sizeof(u_int)) {
			error = EINVAL;
			break;
		}
		error = FUNC11(sopt, &loop, sizeof(u_int), sizeof(u_int));
		if (error)
			break;
		if (loop > 1) {
			error = EINVAL;
			break;
		}
		im6o = FUNC6(inp);
		if (im6o == NULL) {
			error = ENOMEM;
			break;
		}
		FUNC0(im6o);
		im6o->im6o_multicast_loop = loop;
		FUNC2(im6o);
		FUNC1(im6o);	/* from in6p_findmoptions() */
		break;
	}

	case IPV6_JOIN_GROUP:
	case MCAST_JOIN_GROUP:
	case MCAST_JOIN_SOURCE_GROUP:
		error = FUNC7(inp, sopt);
		break;

	case IPV6_LEAVE_GROUP:
	case MCAST_LEAVE_GROUP:
	case MCAST_LEAVE_SOURCE_GROUP:
		error = FUNC8(inp, sopt);
		break;

	case MCAST_BLOCK_SOURCE:
	case MCAST_UNBLOCK_SOURCE:
		error = FUNC5(inp, sopt);
		break;

	case IPV6_MSFILTER:
		error = FUNC10(inp, sopt);
		break;

	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}