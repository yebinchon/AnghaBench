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
typedef  int /*<<< orphan*/  u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct bd_addr {int /*<<< orphan*/ * addr; } ;
struct hci_link {struct bd_addr bdaddr; void* connhdl; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_CONN ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  HCI_CONN_TERMINATED_BY_LOCAL_HOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bd_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OTHER_END_TERMINATED_CONN_LOW_RESOURCES ; 
#define  HCI_PAGE_TIMEOUT 129 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hci_link*) ; 
#define  HCI_SUCCESS 128 
 int /*<<< orphan*/  FUNC3 (char*,struct hci_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bd_addr*,struct bd_addr*) ; 
 int /*<<< orphan*/  hci_active_links ; 
 int /*<<< orphan*/  FUNC5 (struct hci_link*) ; 
 int /*<<< orphan*/  hci_dev ; 
 int /*<<< orphan*/  FUNC6 (struct bd_addr*,int /*<<< orphan*/ ) ; 
 struct hci_link* FUNC7 (struct bd_addr*) ; 
 struct hci_link* FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bd_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bd_addr*) ; 
 int /*<<< orphan*/  FUNC12 (struct bd_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct pbuf *p)
{
	err_t ret;
	struct bd_addr *bdaddr;
	struct hci_link *link;

	(void)ret;

	bdaddr = (void*)(((u8_t*)p->payload)+3);
	link = FUNC7(bdaddr);
	FUNC3("hci_conn_complete_evt(%p,%02x - %02x:%02x:%02x:%02x:%02x:%02x)\n",link,((u8_t*)p->payload)[0],bdaddr->addr[0],bdaddr->addr[1],bdaddr->addr[2],bdaddr->addr[3],bdaddr->addr[4],bdaddr->addr[5]);
	switch(((u8_t*)p->payload)[0]) {
		case HCI_SUCCESS:
			if(link==NULL) {
				if((link=FUNC8())==NULL) {
					FUNC0("hci_conn_complete_evt: Could not allocate memory for link. Disconnect\n");
					FUNC6(bdaddr, HCI_OTHER_END_TERMINATED_CONN_LOW_RESOURCES);
					FUNC12(bdaddr,HCI_CONN_TERMINATED_BY_LOCAL_HOST);
					break;
				}
				FUNC4(&(link->bdaddr),bdaddr);
				link->connhdl = FUNC9(*((u16_t*)(((u8_t*)p->payload)+1)));
				FUNC2(&(hci_active_links),link);
				FUNC1(hci_dev,bdaddr,ret);
				FUNC11(&(link->bdaddr));
			} else {
				link->connhdl = FUNC9(*((u16_t*)(((u8_t*)p->payload)+1)));
				FUNC1(hci_dev,bdaddr,ret);
				FUNC10(&(link->bdaddr),((u8_t*)p->payload)[10],ERR_OK);
			}
			break;
		case HCI_PAGE_TIMEOUT:
			break;
		default:
			if(link!=NULL) {
				FUNC5(link);
				FUNC10(bdaddr,((u8_t*)p->payload)[10],ERR_CONN);
			}
			break;
	}
}