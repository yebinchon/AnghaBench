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
struct l2cap_pcb {int /*<<< orphan*/  state; int /*<<< orphan*/  remote_bdaddr; int /*<<< orphan*/  scid; int /*<<< orphan*/  psm; int /*<<< orphan*/  encrypt; struct l2cap_pcb* next; } ;
struct bd_addr {int dummy; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  L2CAP_CONN_REF_RES ; 
 int /*<<< orphan*/  L2CAP_CONN_REQ ; 
 int /*<<< orphan*/  L2CAP_CONN_REQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_pcb*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 int /*<<< orphan*/  W4_L2CAP_CONNECT_RSP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct bd_addr*) ; 
 struct pbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct l2cap_pcb* l2cap_active_pcbs ; 
 scalar_t__ FUNC6 (struct l2cap_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pbuf*) ; 

void FUNC7(struct bd_addr *bdaddr, u8_t encrypt_mode, err_t err)
{
	struct l2cap_pcb *pcb;
	struct pbuf *data;
	err_t ret;

	for(pcb = l2cap_active_pcbs; pcb != NULL; pcb = pcb->next) {
		if(FUNC3(&(pcb->remote_bdaddr), bdaddr)) {
			break;
		}
	}
	if(pcb == NULL) {
		/* Silently discard */
		FUNC2("lp_connect_cfm: Silently discard\n");
	} else {
		if(err == ERR_OK) {
			pcb->encrypt = encrypt_mode;
			/* Send l2cap_conn_req signal if no error */
			if((data = FUNC4(PBUF_RAW, L2CAP_CONN_REQ_SIZE, PBUF_RAM)) != NULL) {
				((u16_t *)data->payload)[0] = FUNC5(pcb->psm);
				((u16_t *)data->payload)[1] = FUNC5(pcb->scid);
				if((ret = FUNC6(pcb, L2CAP_CONN_REQ, 0, &(pcb->remote_bdaddr), data)) == ERR_OK) {
					pcb->state = W4_L2CAP_CONNECT_RSP;
				} else {
					FUNC1(pcb,L2CAP_CONN_REF_RES,0x0000,ret); /* No resources available? */
				}
				//LOG("lp_connect_cfm: l2cap_conn_req signal sent. err = %d\nPSM = 0x%x\nscid = 0x%x\nencrypt mode = 0x%x\n", err, pcb->psm, pcb->scid, pcb->encrypt);
			} else {
				FUNC0("lp_connect_cfm: No resources available\n");
				FUNC1(pcb,L2CAP_CONN_REF_RES,0x0000,ret); /* No resources available */
			}
		} else {
			FUNC0("lp_connect_cfm: Connection falied\n");
			FUNC1(pcb,L2CAP_CONN_REF_RES,0x0000,ret); /* No resources available */
		}
	}
}