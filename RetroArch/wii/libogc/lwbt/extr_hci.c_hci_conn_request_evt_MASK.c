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
struct pbuf {scalar_t__ payload; } ;
struct hci_link {int /*<<< orphan*/  bdaddr; } ;
struct bd_addr {int dummy; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bd_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hci_link*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bd_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct bd_addr*,int) ; 
 int /*<<< orphan*/  hci_active_links ; 
 int /*<<< orphan*/  hci_dev ; 
 struct hci_link* FUNC6 (struct bd_addr*) ; 
 struct hci_link* FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct pbuf *p)
{
	u8_t *cod;
	u8_t link_type;
	err_t ret = ERR_OK;
	struct bd_addr *bdaddr;
	struct hci_link *link;

	FUNC3("hci_conn_request_evt()\n");
	bdaddr = (void*)((u8_t*)p->payload);
	cod = (((u8_t*)p->payload)+6);
	link_type = *(((u8_t*)p->payload)+9);

	FUNC1(hci_dev,bdaddr,cod,link_type,ret);
	if(ret==ERR_OK) {
		link = FUNC6(bdaddr);
		if(link==NULL) {
			if((link=FUNC7())==NULL) {
				FUNC0("hci_conn_request_evt: Could not allocate memory for link. Disconnect\n");
				return;
			}

			FUNC4(&(link->bdaddr),bdaddr);
			FUNC2(&(hci_active_links),link);
		}
		FUNC5(bdaddr,0x00);
	} else {
	}
}