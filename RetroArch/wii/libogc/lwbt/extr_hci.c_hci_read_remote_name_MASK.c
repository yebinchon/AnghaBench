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
typedef  int u16_t ;
struct pbuf {int /*<<< orphan*/  tot_len; scalar_t__ payload; } ;
struct hci_inq_res {int psrm; int psm; int co; int /*<<< orphan*/  bdaddr; struct hci_inq_res* next; } ;
struct bd_addr {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_2__ {struct hci_inq_res* ires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_LINK_CTRL_OGF ; 
 int /*<<< orphan*/  HCI_R_REMOTE_NAME_OCF ; 
 int /*<<< orphan*/  HCI_R_REMOTE_NAME_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct bd_addr*) ; 
 struct pbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*) ; 
 struct pbuf* FUNC4 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* hci_dev ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC8(struct bd_addr *bdaddr)
{
	u16_t clock_offset;
	struct pbuf *p = NULL;
	struct hci_inq_res *ires;
	u8_t page_scan_repetition_mode, page_scan_mode;

	for(ires=hci_dev->ires;ires!=NULL;ires=ires->next) {
		if(FUNC1(&(ires->bdaddr),bdaddr)) {
			page_scan_repetition_mode = ires->psrm;
			page_scan_mode = ires->psm;
			clock_offset = ires->co;
			break;
		}
	}

	if(ires==NULL) {
		page_scan_repetition_mode = 0x01;
		page_scan_mode = 0x00;
		clock_offset = 0x00;
	}

	if((p=FUNC2(PBUF_RAW,HCI_R_REMOTE_NAME_PLEN,PBUF_RAM))==NULL) {
		FUNC0("hci_read_remote_name: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	/* Assembling command packet */
	p = FUNC4(p,HCI_R_REMOTE_NAME_OCF,HCI_LINK_CTRL_OGF,HCI_R_REMOTE_NAME_PLEN);
	/* Assembling cmd prameters */
	FUNC6(((u8_t *)p->payload+4),bdaddr->addr,6);
	((u8_t*)p->payload)[10] = page_scan_repetition_mode;
	((u8_t*)p->payload)[11] = page_scan_mode;
	((u16_t*)p->payload)[6] = FUNC5(clock_offset);

	FUNC7(p, p->tot_len);
	FUNC3(p);

	return ERR_OK;

}