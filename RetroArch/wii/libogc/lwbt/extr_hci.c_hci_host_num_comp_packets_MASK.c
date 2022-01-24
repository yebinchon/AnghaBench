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
typedef  scalar_t__ u16_t ;
struct pbuf {int /*<<< orphan*/  tot_len; scalar_t__ payload; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_2__ {int /*<<< orphan*/  host_num_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_HC_BB_OGF ; 
 int /*<<< orphan*/  HCI_H_NUM_COMPL_OCF ; 
 int /*<<< orphan*/  HCI_H_NUM_COMPL_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* hci_dev ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC6(u16_t conhdl, u16_t num_complete)
{
	struct pbuf *p;

	if((p = FUNC1(PBUF_RAW, HCI_H_NUM_COMPL_PLEN, PBUF_RAM)) == NULL) {
		FUNC0("hci_host_num_comp_packets: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}
	/* Assembling command packet */
	p = FUNC3(p, HCI_H_NUM_COMPL_OCF, HCI_HC_BB_OGF, HCI_H_NUM_COMPL_PLEN);
	((u8_t*)p->payload)[4] = 1;
	*(u16_t*)(p->payload+5) = FUNC4(conhdl);
	*(u16_t*)(p->payload+7) = FUNC4(num_complete); /* Number of completed acl packets */

	FUNC5(p, p->tot_len);
	FUNC2(p);

	hci_dev->host_num_acl += num_complete;

	return ERR_OK;
}