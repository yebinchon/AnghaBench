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
struct bd_addr {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_ACCEPT_CONN_REQ_OCF ; 
 int /*<<< orphan*/  HCI_ACCEPT_CONN_REQ_PLEN ; 
 int /*<<< orphan*/  HCI_LINK_CTRL_OGF ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct bd_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC6(struct bd_addr *bdaddr,u8_t role)
{
	struct pbuf *p = NULL;

	if((p=FUNC1(PBUF_RAW,HCI_ACCEPT_CONN_REQ_PLEN,PBUF_RAM))==NULL) {
		FUNC0("hci_exit_periodic_inquiry: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	/* Assembling command packet */
	p = FUNC3(p,HCI_ACCEPT_CONN_REQ_OCF,HCI_LINK_CTRL_OGF,HCI_ACCEPT_CONN_REQ_PLEN);

	/* Assembling cmd prameters */
	FUNC4((void*)(((u8_t*)p->payload)+4),bdaddr,6);
	((u8_t*)p->payload)[10] = role;

	FUNC5(p,p->tot_len);
	FUNC2(p);

	return ERR_OK;
}