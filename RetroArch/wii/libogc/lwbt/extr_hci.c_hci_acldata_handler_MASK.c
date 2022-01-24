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
typedef  int u16_t ;
struct pbuf {struct hci_acl_hdr* payload; } ;
struct hci_link {int connhdl; int /*<<< orphan*/  bdaddr; struct hci_link* next; } ;
struct hci_acl_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  connhdl_pb_bc; } ;
struct TYPE_2__ {scalar_t__ host_num_acl; scalar_t__ flow; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_ACL_HDR_LEN ; 
 scalar_t__ HCI_HOST_MAX_NUM_ACL ; 
 int /*<<< orphan*/  FUNC0 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct pbuf*,int /*<<< orphan*/ ) ; 
 struct hci_link* hci_active_links ; 
 TYPE_1__* hci_dev ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct pbuf *p)
{
	struct hci_acl_hdr *aclhdr;
	struct hci_link *link;
	u16_t conhdl;

	aclhdr = p->payload;
	FUNC1(p, -HCI_ACL_HDR_LEN);

	conhdl = FUNC4(aclhdr->connhdl_pb_bc) & 0x0FFF; /* Get the connection handle from the first
					   12 bits */
	if(hci_dev->flow) {
		//TODO: XXX??? DO WE SAVE NUMACL PACKETS COMPLETED IN LINKS LIST?? SHOULD WE CALL
		//hci_host_num_comp_packets from the main loop when no data has been received from the
		//serial port???
		--hci_dev->host_num_acl;
		if(hci_dev->host_num_acl == 0) {
			FUNC2(conhdl, HCI_HOST_MAX_NUM_ACL);
			hci_dev->host_num_acl = HCI_HOST_MAX_NUM_ACL;
		}
	}

	for(link = hci_active_links; link != NULL; link = link->next) {
		if(link->connhdl == conhdl) {
			break;
		}
	}

	if(link != NULL) {
		if(FUNC4(aclhdr->len)) {
			//LOG("hci_acl_input: Forward ACL packet to higher layer p->tot_len = %d\n", p->tot_len);
			FUNC3(p, &(link->bdaddr));
		} else {
			FUNC0(p); /* If length of ACL packet is zero, we silently discard it */
		}
	} else {
		FUNC0(p); /* If no acitve ACL link was found, we silently discard the packet */
	}
}