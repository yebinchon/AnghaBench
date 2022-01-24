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
struct pbuf {int /*<<< orphan*/  tot_len; scalar_t__ payload; } ;
struct hci_link {int /*<<< orphan*/  connhdl; } ;
struct bd_addr {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_CONN ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_HC_BB_OGF ; 
 int /*<<< orphan*/  HCI_W_FLUSHTO ; 
 int /*<<< orphan*/  HCI_W_FLUSHTO_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_TRANSPORT ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_link* FUNC4 (struct bd_addr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC7(struct bd_addr *bdaddr, u16_t flushto)
{
	struct hci_link *link;
	struct pbuf *p;

	/* Check if an ACL connection exists */
	link = FUNC4(bdaddr);

	if(link == NULL) {
		FUNC0("lp_write_flush_timeout: ACL connection does not exist\n");
		return ERR_CONN;
	}

	if((p = FUNC1(PBUF_TRANSPORT, HCI_W_FLUSHTO_PLEN, PBUF_RAM)) == NULL) { /* Alloc len of packet */
		FUNC0("lp_write_flush_timeout: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	/* Assembling command packet */
	p = FUNC3(p, HCI_W_FLUSHTO, HCI_HC_BB_OGF, HCI_W_FLUSHTO_PLEN);
	/* Assembling cmd prameters */
	((u16_t *)p->payload)[2] = FUNC5(link->connhdl);
	((u16_t *)p->payload)[3] = FUNC5(flushto);

	FUNC6(p, p->tot_len);
	FUNC2(p);
	return ERR_OK;
}