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
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int dummy; } ;
struct flow_divert_pcb {int /*<<< orphan*/  so; } ;
typedef  int Boolean ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  rxbytes ; 
 int /*<<< orphan*/  rxpackets ; 
 struct inpcb* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txbytes ; 
 int /*<<< orphan*/  txpackets ; 

__attribute__((used)) static void
FUNC6(struct flow_divert_pcb *fd_cb, int data_len, Boolean send)
{
	struct inpcb *inp = NULL;
	struct ifnet *ifp = NULL;
	Boolean cell = FALSE;
	Boolean wifi = FALSE;
	Boolean wired = FALSE;
	
	inp = FUNC5(fd_cb->so);
	if (inp == NULL) {
		return;
	}

	ifp = inp->inp_last_outifp;
	if (ifp != NULL) {
		cell = FUNC0(ifp);
		wifi = (!cell && FUNC1(ifp));
		wired = (!wifi && FUNC2(ifp));
	}
	
	if (send) {
		FUNC3(inp, cell, wifi, wired, txpackets, 1);
		FUNC3(inp, cell, wifi, wired, txbytes, data_len);
	} else {
		FUNC3(inp, cell, wifi, wired, rxpackets, 1);
		FUNC3(inp, cell, wifi, wired, rxbytes, data_len);
	}
	FUNC4(inp);
}