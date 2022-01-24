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
typedef  int /*<<< orphan*/  u_int ;
struct socket {scalar_t__ so_usecount; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {scalar_t__ inp_wantcnt; scalar_t__ inp_state; struct socket* inp_socket; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ INPCB_STATE_DEAD ; 
 scalar_t__ WNT_STOPUSING ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 struct inpcb* FUNC2 (struct inpcbinfo*,struct in_addr,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int /*<<< orphan*/ ) ; 

struct inpcb *
FUNC5(struct inpcbinfo *pcbinfo, struct in_addr laddr,
    u_int lport_arg, int wild_okay)
{
	struct inpcb *inp;

	/* Perform normal lookup */
	inp = FUNC2(pcbinfo, laddr, lport_arg, wild_okay);

	/* Check if we found a match but it's waiting to be disposed */
	if (inp != NULL && inp->inp_wantcnt == WNT_STOPUSING) {
		struct socket *so = inp->inp_socket;

		FUNC3(so, 0);

		if (so->so_usecount == 0) {
			if (inp->inp_state != INPCB_STATE_DEAD)
				FUNC0(inp);
			FUNC1(inp);	/* will unlock & destroy */
			inp = NULL;
		} else {
			FUNC4(so, 0);
		}
	}

	return (inp);
}