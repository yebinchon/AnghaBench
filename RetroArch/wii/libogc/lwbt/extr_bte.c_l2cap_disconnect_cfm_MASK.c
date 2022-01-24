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
typedef  scalar_t__ u32 ;
struct l2cap_pcb {int dummy; } ;
struct bte_pcb {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* disconn_cfm ) (int /*<<< orphan*/ ,struct bte_pcb*,int /*<<< orphan*/ ) ;scalar_t__ state; int /*<<< orphan*/  err; int /*<<< orphan*/ * ctl_pcb; int /*<<< orphan*/ * data_pcb; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_OTHER_END_TERMINATED_CONN_USER_ENDED ; 
#define  HIDP_CONTROL_CHANNEL 129 
#define  HIDP_DATA_CHANNEL 128 
 scalar_t__ STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct bte_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (void*,struct l2cap_pcb*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct l2cap_pcb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bte_pcb*,int /*<<< orphan*/ ) ; 

err_t FUNC7(void *arg, struct l2cap_pcb *pcb)
{
	struct bte_pcb *bte = (struct bte_pcb*)arg;

	if(bte==NULL) return ERR_OK;

	switch(FUNC5(pcb)) {
		case HIDP_CONTROL_CHANNEL:
			FUNC4(bte->ctl_pcb);
			bte->ctl_pcb = NULL;
			if(bte->data_pcb!=NULL)
				FUNC3(bte->data_pcb,l2cap_disconnect_cfm);
			break;
		case HIDP_DATA_CHANNEL:
			FUNC4(bte->data_pcb);
			bte->data_pcb = NULL;
			if(bte->ctl_pcb!=NULL)
				FUNC3(bte->ctl_pcb,l2cap_disconnect_cfm);
			break;
	}
	if(bte->data_pcb==NULL && bte->ctl_pcb==NULL) {
		bte->err = ERR_OK;
		bte->state = (u32)STATE_DISCONNECTED;
		FUNC0(bte);
		if(bte->disconn_cfm!=NULL) bte->disconn_cfm(bte->cbarg,bte,ERR_OK);

		FUNC1(NULL);
		FUNC2(&(bte->bdaddr),HCI_OTHER_END_TERMINATED_CONN_USER_ENDED);
	}

	return ERR_OK;
}