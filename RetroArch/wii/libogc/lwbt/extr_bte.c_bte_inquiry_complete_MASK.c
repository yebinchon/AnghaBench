#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8_t ;
typedef  scalar_t__ u16_t ;
struct inquiry_info_ex {int psrm; int psm; int co; int /*<<< orphan*/  cod; int /*<<< orphan*/  bdaddr; } ;
struct hci_pcb {int dummy; } ;
struct TYPE_4__ {int* addr; } ;
struct hci_inq_res {int* cod; int psrm; int psm; int co; struct hci_inq_res* next; TYPE_2__ bdaddr; } ;
struct bt_state {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_3__ {int num_founddevs; scalar_t__ num_maxdevs; struct inquiry_info_ex* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct bt_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__ btstate ; 
 int /*<<< orphan*/  FUNC2 (struct inquiry_info_ex*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,scalar_t__,int /*<<< orphan*/  (*) (void*,struct hci_pcb*,struct hci_inq_res*,scalar_t__)) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 

err_t FUNC7(void *arg,struct hci_pcb *pcb,struct hci_inq_res *ires,u16_t result)
{
	u8_t i;
	struct hci_inq_res *p;
	struct bt_state *state = (struct bt_state*)arg;

	if(result==HCI_SUCCESS) {
		if(ires!=NULL) {

			if(btstate.info!=NULL) FUNC2(btstate.info);
			btstate.info = NULL;
			btstate.num_maxdevs = 0;
			btstate.num_founddevs = 0;

			p = ires;
			while(p!=NULL) {
				btstate.num_founddevs++;
				p = p->next;
			}

			p = ires;
			btstate.info = (struct inquiry_info_ex*)FUNC4(sizeof(struct inquiry_info_ex)*btstate.num_founddevs);
			for(i=0;i<btstate.num_founddevs && p!=NULL;i++) {
				FUNC1(&(btstate.info[i].bdaddr),&(p->bdaddr));
				FUNC5(btstate.info[i].cod,p->cod,3);
				btstate.info[i].psrm = p->psrm;
				btstate.info[i].psm = p->psm;
				btstate.info[i].co = p->co;

				FUNC6("bdaddr: %02x:%02x:%02x:%02x:%02x:%02x\n",p->bdaddr.addr[0],p->bdaddr.addr[1],p->bdaddr.addr[2],p->bdaddr.addr[3],p->bdaddr.addr[4],p->bdaddr.addr[5]);
				FUNC6("cod:    %02x%02x%02x\n",p->cod[0],p->cod[1],p->cod[2]);
				FUNC6("psrm:   %02x\n",p->psrm);
				FUNC6("psm:   %02x\n",p->psm);
				FUNC6("co:   %04x\n",p->co);
				p = p->next;
			}
			FUNC0(state,ERR_OK);
		} else
			FUNC3(0x009E8B33,0x03,btstate.num_maxdevs,bte_inquiry_complete);
	}
	return ERR_OK;
}