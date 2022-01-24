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
typedef  scalar_t__ u8_t ;
struct linkkey_info {int /*<<< orphan*/  key; int /*<<< orphan*/  bdaddr; } ;
struct hci_pcb {struct hci_link_key* keyres; } ;
struct hci_link_key {struct hci_link_key* next; int /*<<< orphan*/  key; int /*<<< orphan*/  bdaddr; } ;
struct bt_state {scalar_t__ num_maxdevs; scalar_t__ usrdata; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_CONN ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ ERR_VAL ; 
 scalar_t__ HCI_HC_BB_OGF ; 
 scalar_t__ HCI_R_STORED_LINK_KEY_OCF ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,struct hci_link_key*,...) ; 
 scalar_t__ FUNC1 (struct bt_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

err_t FUNC4(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
	u8_t i = 0;
	struct hci_link_key *p;
	struct linkkey_info *keys;
	struct bt_state *state = (struct bt_state*)arg;

	if(!pcb) return ERR_CONN;

	FUNC0("bte_read_stored_link_key_complete(%02x,%p)\n",result,pcb->keyres);

	if(state==NULL) return ERR_VAL;
	if(!(ogf==HCI_HC_BB_OGF && ocf==HCI_R_STORED_LINK_KEY_OCF)) return FUNC1(state,ERR_CONN);

	if(result==HCI_SUCCESS) {
		keys = (struct linkkey_info*)state->usrdata;
		if(pcb->keyres!=NULL && keys!=NULL) {
			for(i=0,p=pcb->keyres;i<state->num_maxdevs && p!=NULL;i++) {
				FUNC2(&(keys[i].bdaddr),&(p->bdaddr));
				FUNC3(keys[i].key,p->key,16);

				p = p->next;
			}
		}
		FUNC0("bte_read_stored_link_key_complete(%02x,%p,%d)\n",result,pcb->keyres,i);
		FUNC1(state,i);
		return ERR_OK;
	}

	return FUNC1(state,ERR_VAL);
}