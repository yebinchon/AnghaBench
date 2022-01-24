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
struct pbuf {int len; scalar_t__ payload; } ;
struct hci_link {int len; int pb; int connhdl; struct pbuf* p; } ;
struct hci_acl_hdr {void* len; void* connhdl_pb_bc; } ;
struct bd_addr {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_2__ {scalar_t__ acl_max_pkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_CONN ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int HCI_ACL_DATA_PACKET ; 
 scalar_t__ HCI_ACL_HDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*,struct pbuf*) ; 
 struct pbuf* FUNC4 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*) ; 
 struct pbuf* FUNC7 (struct pbuf*) ; 
 TYPE_1__* hci_dev ; 
 struct hci_link* FUNC8 (struct bd_addr*) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct pbuf*,int) ; 

err_t FUNC11(struct bd_addr *bdaddr,struct pbuf *p,u16_t len,u8_t pb)
{
	u16_t connhdlpbbc;
	struct hci_link *link;
	struct hci_acl_hdr *aclhdr;
	struct pbuf *q;

	link = FUNC8(bdaddr);
	if(link==NULL) {
		FUNC0("lp_acl_write: ACL connection does not exist\n");
		return ERR_CONN;
	}

	if(hci_dev->acl_max_pkt==0) {
		if(p != NULL) {
			/* Packet can be queued? */
			if(link->p != NULL) {
				FUNC1("lp_acl_write: Host buffer full. Dropped packet\n");
				return ERR_OK; /* Drop packet */
			} else {
				/* Copy PBUF_REF referenced payloads into PBUF_RAM */
				p = FUNC7(p);
				/* Remember pbuf to queue, if any */
				link->p = p;
				link->len = len;
				link->pb = pb;
				/* Pbufs are queued, increase the reference count */
				FUNC6(p);
				FUNC1("lp_acl_write: Host queued packet %p\n", (void *)p);
			}
		}
	}

	if((q=FUNC2(PBUF_RAW,HCI_ACL_HDR_LEN+1,PBUF_RAM))==NULL) {
		FUNC0("lp_acl_write: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	FUNC3(q,p);
	((u8_t*)q->payload)[0] = HCI_ACL_DATA_PACKET;

	aclhdr = (void*)((u8_t*)q->payload+1);
	//aclhdr->connhdl_pb_bc = CONNPBBC(link->connhdl,pb,0);
	connhdlpbbc = link->connhdl; /* Received from connection complete event */
	connhdlpbbc |= (pb<<12); /* Packet boundary flag */
	connhdlpbbc &= 0x3FFF; /* Point-to-point */
	aclhdr->connhdl_pb_bc = FUNC9(connhdlpbbc);
	aclhdr->len = FUNC9(len);

	FUNC10(q,(q->len+len));
	--hci_dev->acl_max_pkt;

	p = FUNC4(q);
	FUNC5(q);
	return ERR_OK;
}