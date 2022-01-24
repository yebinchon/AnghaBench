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
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct hci_inq_res {int psrm; int psm; int /*<<< orphan*/ * next; int /*<<< orphan*/  co; int /*<<< orphan*/  cod; int /*<<< orphan*/  bdaddr; } ;
struct bd_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hci_inq_res*) ; 
 int MEMB_NUM_HCI_INQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bd_addr*) ; 
 struct hci_inq_res* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* hci_dev ; 
 int /*<<< orphan*/  hci_inq_results ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC6(struct pbuf *p)
{
	u8_t num_resp;
	u32_t i,resp_off;
	struct bd_addr *bdaddr;
	struct hci_inq_res *ires;

	num_resp = ((u8_t*)p->payload)[0];
	//printf("hci_inquriy_result_evt(%d)\n",num_resp);
	for(i=0;i<num_resp && i<MEMB_NUM_HCI_INQ;i++) {
		resp_off = (i*14);
		bdaddr = (void*)(((u8_t*)p->payload)+(1+resp_off));
		if((ires=FUNC3(&hci_inq_results))!=NULL) {
			FUNC2(&(ires->bdaddr),bdaddr);
			ires->psrm = ((u8_t*)p->payload)[7+resp_off];
			ires->psm = ((u8_t*)p->payload)[8+resp_off];
			FUNC5(ires->cod,((u8_t*)p->payload)+10+resp_off,3);
			ires->co = FUNC4(*((u16_t*)(((u8_t*)p->payload)+13+resp_off)));
			ires->next = NULL;

			FUNC1(&(hci_dev->ires),ires);
		} else
			FUNC0("hci_inquriy_result_evt: Could not allocate memory for inquiry result\n");
	}

}