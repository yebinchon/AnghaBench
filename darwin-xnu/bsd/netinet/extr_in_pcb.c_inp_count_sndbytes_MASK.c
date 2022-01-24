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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_2__ {scalar_t__ sb_cc; int /*<<< orphan*/  sb_flags; } ;
struct socket {int so_flags; TYPE_1__ so_snd; } ;
struct inpcb {struct socket* inp_socket; struct ifnet* inp_last_outifp; } ;
struct ifnet {scalar_t__ if_type; scalar_t__ if_subfamily; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ IFNET_SUBFAMILY_WIFI ; 
 scalar_t__ IFT_CELLULAR ; 
 int /*<<< orphan*/  SB_SNDBYTE_CNT ; 
 int SOF_MP_SUBFLOW ; 
 scalar_t__ FUNC0 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,scalar_t__) ; 

inline void
FUNC3(struct inpcb *inp, u_int32_t th_ack)
{
	struct ifnet *ifp = inp->inp_last_outifp;
	struct socket *so = inp->inp_socket;
	if (ifp != NULL && !(so->so_flags & SOF_MP_SUBFLOW) &&
	    (ifp->if_type == IFT_CELLULAR ||
	    ifp->if_subfamily == IFNET_SUBFAMILY_WIFI)) {
		int32_t unsent;

		so->so_snd.sb_flags |= SB_SNDBYTE_CNT;

		/*
		 * There can be data outstanding before the connection
		 * becomes established -- TFO case
		 */
		if (so->so_snd.sb_cc > 0)
			FUNC1(so, so->so_snd.sb_cc);

		unsent = FUNC0(so, th_ack);
		if (unsent > 0)
			FUNC2(so, unsent);
	}
}