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
struct pbuf {int /*<<< orphan*/  tot_len; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_INFO_PARAM_OGF ; 
 int /*<<< orphan*/  HCI_R_BUF_SIZE_OCF ; 
 int /*<<< orphan*/  HCI_R_BUF_SIZE_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC5(void)
{
	struct pbuf *p = NULL;

	if((p=FUNC1(PBUF_RAW,HCI_R_BUF_SIZE_PLEN,PBUF_RAM))==NULL) {
		FUNC0("hci_read_buffer_size: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	p = FUNC3(p,HCI_R_BUF_SIZE_OCF,HCI_INFO_PARAM_OGF,HCI_R_BUF_SIZE_PLEN);

	FUNC4(p,p->tot_len);
	FUNC2(p);

	return ERR_OK;
}