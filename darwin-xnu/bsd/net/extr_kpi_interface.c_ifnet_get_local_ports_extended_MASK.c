#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  TYPE_1__* ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_4__ {int if_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int IFNET_GET_LOCAL_PORTS_ACTIVEONLY ; 
 int IFNET_GET_LOCAL_PORTS_EXTBGIDLEONLY ; 
 int IFNET_GET_LOCAL_PORTS_NOWAKEUPOK ; 
 int IFNET_GET_LOCAL_PORTS_RECVANYIFONLY ; 
 int IFNET_GET_LOCAL_PORTS_TCPONLY ; 
 int IFNET_GET_LOCAL_PORTS_UDPONLY ; 
 int IFNET_GET_LOCAL_PORTS_WILDCARDOK ; 
 int INPCB_GET_PORTS_USED_ACTIVEONLY ; 
 int INPCB_GET_PORTS_USED_EXTBGIDLEONLY ; 
 int INPCB_GET_PORTS_USED_NOWAKEUPOK ; 
 int INPCB_GET_PORTS_USED_RECVANYIFONLY ; 
 int INPCB_GET_PORTS_USED_WILDCARDOK ; 
 int /*<<< orphan*/  IP_PORTRANGE_SIZE ; 
#define  PF_INET 130 
#define  PF_INET6 129 
#define  PF_UNSPEC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

errno_t
FUNC5(ifnet_t ifp, protocol_family_t protocol,
    u_int32_t flags, u_int8_t *bitfield)
{
	u_int32_t ifindex;
	u_int32_t inp_flags = 0;

	if (bitfield == NULL)
		return (EINVAL);

	switch (protocol) {
	case PF_UNSPEC:
	case PF_INET:
	case PF_INET6:
		break;
	default:
		return (EINVAL);
	}

	/* bit string is long enough to hold 16-bit port values */
	FUNC1(bitfield, FUNC0(IP_PORTRANGE_SIZE));

	FUNC2(ifp);


		inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_WILDCARDOK) ?
			INPCB_GET_PORTS_USED_WILDCARDOK : 0);
		inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_NOWAKEUPOK) ?
			INPCB_GET_PORTS_USED_NOWAKEUPOK : 0);
		inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_RECVANYIFONLY) ?
			INPCB_GET_PORTS_USED_RECVANYIFONLY : 0);
		inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_EXTBGIDLEONLY) ?
			INPCB_GET_PORTS_USED_EXTBGIDLEONLY : 0);
		inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_ACTIVEONLY) ?
			INPCB_GET_PORTS_USED_ACTIVEONLY : 0);

		ifindex = (ifp != NULL) ? ifp->if_index : 0;

		if (!(flags & IFNET_GET_LOCAL_PORTS_TCPONLY))
			FUNC4(ifindex, protocol, inp_flags,
			    bitfield);

		if (!(flags & IFNET_GET_LOCAL_PORTS_UDPONLY))
			FUNC3(ifindex, protocol, inp_flags,
			    bitfield);

	return (0);
}