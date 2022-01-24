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
typedef  int u8_t ;
struct pbuf {int /*<<< orphan*/  tot_len; scalar_t__ payload; } ;
struct hci_link_key {struct hci_link_key* next; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ bdaddr; struct hci_link_key* keyres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_HC_BB_OGF ; 
 int /*<<< orphan*/  HCI_R_STORED_LINK_KEY_OCF ; 
 int /*<<< orphan*/  HCI_R_STORED_LINK_KEY_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hci_link_key*) ; 
 struct pbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*) ; 
 struct pbuf* FUNC4 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* hci_dev ; 
 int /*<<< orphan*/  hci_link_key_results ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC7()
{
	struct pbuf *p = NULL;
	struct hci_link_key *tmpres;

	/* Free any previous link key result list */
	while(hci_dev->keyres != NULL) {
		tmpres = hci_dev->keyres;
		hci_dev->keyres = hci_dev->keyres->next;
		FUNC1(&hci_link_key_results,tmpres);
	}

	if((p=FUNC2(PBUF_RAW,HCI_R_STORED_LINK_KEY_PLEN,PBUF_RAM))==NULL) {
		FUNC0("hci_read_stored_link_keys: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	p = FUNC4(p,HCI_R_STORED_LINK_KEY_OCF,HCI_HC_BB_OGF,HCI_R_STORED_LINK_KEY_PLEN);

	FUNC5((void*)((u8_t*)p->payload + 4),hci_dev->bdaddr.addr,6);
	((u8_t*)p->payload)[10] = 1;

	FUNC6(p,p->tot_len);
	FUNC3(p);

	return ERR_OK;
}