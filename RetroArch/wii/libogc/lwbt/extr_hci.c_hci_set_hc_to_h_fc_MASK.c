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
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_HC_BB_OGF ; 
 int /*<<< orphan*/  HCI_SET_HC_TO_H_FC_OCF ; 
 int /*<<< orphan*/  HCI_SET_HC_TO_H_FC_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC5(void)
{
	struct pbuf *p;

	if((p = FUNC1(PBUF_RAW, HCI_SET_HC_TO_H_FC_PLEN, PBUF_RAM)) == NULL) {
		FUNC0("hci_set_hc_to_h_fc: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}
	/* Assembling command packet */
	p = FUNC3(p, HCI_SET_HC_TO_H_FC_OCF, HCI_HC_BB_OGF, HCI_SET_HC_TO_H_FC_PLEN);
	/* Assembling cmd prameters */
	((u8_t *)p->payload)[4] = 0x01; /* Flow control on for HCI ACL Data Packets and off for HCI
									 SCO Data Packets in direction from Host Controller to
				 Host */
	FUNC4(p, p->tot_len);
	FUNC2(p);

	return ERR_OK;
}