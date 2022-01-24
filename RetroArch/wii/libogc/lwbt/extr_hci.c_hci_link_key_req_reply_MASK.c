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
struct bd_addr {unsigned char* addr; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_LINK_CTRL_OGF ; 
 int /*<<< orphan*/  HCI_LINK_KEY_REQ_REP ; 
 int /*<<< orphan*/  HCI_LINK_KEY_REQ_REP_PLEN ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 struct pbuf* FUNC3 (struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*,int /*<<< orphan*/ ) ; 

err_t FUNC6(struct bd_addr *bdaddr, unsigned char *link_key)
{
        struct pbuf *p;
        if ((p = FUNC1(PBUF_RAW, HCI_LINK_KEY_REQ_REP_PLEN, PBUF_RAM)) == NULL) {
                FUNC0("hci_link_key_req_reply: Could not allocate memory for pbuf\n");
                return ERR_MEM;
        }

        p = FUNC3(p, HCI_LINK_KEY_REQ_REP, HCI_LINK_CTRL_OGF, HCI_LINK_KEY_REQ_REP_PLEN);
        //copy bdaddr to offset 0x4
        FUNC4(((u8_t *)p->payload)+4, bdaddr->addr, 6);
        //copy Link Key (16 bytes long) to offset 10 (0xA)
        FUNC4(((u8_t *)p->payload)+10, link_key, 16);
        //send command
        FUNC5(p,p->tot_len);
        FUNC2(p);

        return ERR_OK;
}