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
typedef  int u8_t ;
struct pbuf {int /*<<< orphan*/  tot_len; scalar_t__ payload; } ;
struct bd_addr {int* addr; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_LINK_CTRL_OGF ; 
 int /*<<< orphan*/  HCI_PIN_CODE_REQ_REP ; 
 int /*<<< orphan*/  HCI_PIN_CODE_REQ_REP_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC7(struct bd_addr *bdaddr, u8_t pinlen, u8_t *pincode)
{
	struct pbuf *p;

	if((p = FUNC1(PBUF_RAW, HCI_PIN_CODE_REQ_REP_PLEN, PBUF_RAM)) == NULL) {
		FUNC0("hci_pin_code_request_reply: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	/* Reset buffer content just to make sure */
	FUNC5((u8_t *)p->payload, 0, HCI_PIN_CODE_REQ_REP_PLEN);

	/* Assembling command packet */
	p = FUNC3(p, HCI_PIN_CODE_REQ_REP, HCI_LINK_CTRL_OGF, HCI_PIN_CODE_REQ_REP_PLEN);
	/* Assembling cmd prameters */
	FUNC4(((u8_t *)p->payload) + 4, bdaddr->addr, 6);
	((u8_t *)p->payload)[10] = pinlen;
	FUNC4(((u8_t *)p->payload) + 11, pincode, pinlen);

	FUNC6(p, p->tot_len);
	FUNC2(p);

	return ERR_OK;
}