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
typedef  int /*<<< orphan*/  u16_t ;
struct l2cap_pcb_listen {int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  state; int /*<<< orphan*/  (* l2ca_connect_ind ) (void*,struct l2cap_pcb*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  psm; int /*<<< orphan*/  bdaddr; } ;
struct l2cap_pcb {int /*<<< orphan*/  callback_arg; } ;
struct bd_addr {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  L2CAP_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct l2cap_pcb_listen*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bd_addr*) ; 
 struct l2cap_pcb_listen* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct l2cap_pcb*) ; 
 int /*<<< orphan*/  l2cap_listen_pcbs ; 
 int /*<<< orphan*/  l2cap_listenpcbs ; 
 int /*<<< orphan*/  l2cap_pcbs ; 

err_t FUNC5(struct l2cap_pcb *npcb, struct bd_addr *bdaddr, u16_t psm,err_t (* l2ca_connect_ind)(void *arg, struct l2cap_pcb *pcb, err_t err))
{
	struct l2cap_pcb_listen *lpcb;

	lpcb = FUNC3(&l2cap_listenpcbs);
	if(lpcb == NULL) {
		FUNC0("l2cap_connect_ind: Could not allocate memory for lpcb\n");
		return ERR_MEM;
	}

	FUNC2(&(lpcb->bdaddr),bdaddr);
	lpcb->psm = psm;
	lpcb->l2ca_connect_ind = l2ca_connect_ind;
	lpcb->state = L2CAP_LISTEN;
	lpcb->callback_arg = npcb->callback_arg;
	FUNC4(&l2cap_pcbs, npcb);
	FUNC1(&(l2cap_listen_pcbs), lpcb);
	return ERR_OK;
}