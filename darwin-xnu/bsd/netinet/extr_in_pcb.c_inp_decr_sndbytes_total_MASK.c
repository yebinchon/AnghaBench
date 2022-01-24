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
struct socket {scalar_t__ so_pcb; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int /*<<< orphan*/  if_sndbyte_total; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

inline void
FUNC2(struct socket *so, int32_t len)
{
	struct inpcb *inp = (struct inpcb *)so->so_pcb;
	struct ifnet *ifp = inp->inp_last_outifp;

	if (ifp != NULL) {
		FUNC1(ifp->if_sndbyte_total >= len);
		FUNC0(-len, &ifp->if_sndbyte_total);
	}
}