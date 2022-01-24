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
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_HC_BB_OGF ; 
 int /*<<< orphan*/  HCI_W_SCAN_EN_OCF ; 
 int /*<<< orphan*/  HCI_W_SCAN_EN_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC5(u8_t scan_enable)
{
	struct pbuf *p = NULL;

	if((p=FUNC1(PBUF_RAW,HCI_W_SCAN_EN_PLEN,PBUF_RAM))==NULL) {
		FUNC0("hci_set_write_page_timeout: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	p = FUNC3(p,HCI_W_SCAN_EN_OCF,HCI_HC_BB_OGF,HCI_W_SCAN_EN_PLEN);
	((u8_t*)p->payload)[4] = scan_enable;

	FUNC4(p,p->tot_len);
	FUNC2(p);

	return ERR_OK;
}