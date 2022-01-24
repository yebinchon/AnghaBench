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
typedef  int /*<<< orphan*/  u8_t ;
struct pbuf {int /*<<< orphan*/  tot_len; scalar_t__ payload; } ;
struct bd_addr {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_LINK_CTRL_OGF ; 
 int /*<<< orphan*/  HCI_REJECT_CONN_REQ_OCF ; 
 int /*<<< orphan*/  HCI_REJECT_CONN_REQ_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC6(struct bd_addr *bdaddr, u8_t reason)
{
	struct pbuf *p;

	if((p = FUNC1(PBUF_RAW, HCI_REJECT_CONN_REQ_PLEN, PBUF_RAM)) == NULL) {
		FUNC0("hci_reject_connection_request: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}
	/* Assembling command packet */
	p = FUNC3(p, HCI_REJECT_CONN_REQ_OCF, HCI_LINK_CTRL_OGF, HCI_REJECT_CONN_REQ_PLEN);
	/* Assembling cmd prameters */
	FUNC4(((u8_t *)p->payload) + 4, bdaddr->addr, 6);
	((u8_t *)p->payload)[10] = reason;

	FUNC5(p, p->tot_len);
	FUNC2(p);

	return ERR_OK;
}