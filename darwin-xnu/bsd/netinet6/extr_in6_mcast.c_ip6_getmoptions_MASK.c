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
typedef  int /*<<< orphan*/  u_int ;
struct sockopt {int sopt_name; } ;
struct ip6_moptions {int /*<<< orphan*/  im6o_multicast_loop; int /*<<< orphan*/  im6o_multicast_hlim; TYPE_1__* im6o_multicast_ifp; } ;
struct inpcb {int /*<<< orphan*/  inp_socket; struct ip6_moptions* in6p_moptions; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENOPROTOOPT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ip6_moptions*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_moptions*) ; 
 scalar_t__ IPPROTO_DIVERT ; 
#define  IPV6_MSFILTER 131 
#define  IPV6_MULTICAST_HOPS 130 
#define  IPV6_MULTICAST_IF 129 
#define  IPV6_MULTICAST_LOOP 128 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_RAW ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6_mcast_loop ; 
 int FUNC4 (struct inpcb*,struct sockopt*) ; 
 int /*<<< orphan*/  ip6_defmcasthlim ; 
 int FUNC5 (struct sockopt*,int /*<<< orphan*/ *,int) ; 

int
FUNC6(struct inpcb *inp, struct sockopt *sopt)
{
	struct ip6_moptions	*im6o;
	int			 error;
	u_int			 optval;

	im6o = inp->in6p_moptions;
	/*
	 * If socket is neither of type SOCK_RAW or SOCK_DGRAM,
	 * or is a divert socket, reject it.
	 */
	if (FUNC2(inp->inp_socket) == IPPROTO_DIVERT ||
	    (FUNC3(inp->inp_socket) != SOCK_RAW &&
	    FUNC3(inp->inp_socket) != SOCK_DGRAM)) {
		return (EOPNOTSUPP);
	}

	error = 0;
	switch (sopt->sopt_name) {
	case IPV6_MULTICAST_IF:
		if (im6o != NULL)
			FUNC0(im6o);
		if (im6o == NULL || im6o->im6o_multicast_ifp == NULL) {
			optval = 0;
		} else {
			optval = im6o->im6o_multicast_ifp->if_index;
		}
		if (im6o != NULL)
			FUNC1(im6o);
		error = FUNC5(sopt, &optval, sizeof(u_int));
		break;

	case IPV6_MULTICAST_HOPS:
		if (im6o == NULL) {
			optval = ip6_defmcasthlim;
		} else {
			FUNC0(im6o);
			optval = im6o->im6o_multicast_hlim;
			FUNC1(im6o);
		}
		error = FUNC5(sopt, &optval, sizeof(u_int));
		break;

	case IPV6_MULTICAST_LOOP:
		if (im6o == NULL) {
			optval = in6_mcast_loop; /* XXX VIMAGE */
		} else {
			FUNC0(im6o);
			optval = im6o->im6o_multicast_loop;
			FUNC1(im6o);
		}
		error = FUNC5(sopt, &optval, sizeof(u_int));
		break;

	case IPV6_MSFILTER:
		if (im6o == NULL) {
			error = EADDRNOTAVAIL;
		} else {
			error = FUNC4(inp, sopt);
		}
		break;

	default:
		error = ENOPROTOOPT;
		break;
	}

	return (error);
}