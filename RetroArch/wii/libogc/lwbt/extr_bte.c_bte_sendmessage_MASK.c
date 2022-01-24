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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pbuf {scalar_t__ payload; } ;
struct ctrl_req_t {int /*<<< orphan*/ * sent; struct bte_pcb* pcb; struct pbuf* p; } ;
struct bte_pcb {scalar_t__ state; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERR_CLSD ; 
 scalar_t__ ERR_MEM ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ ERR_VAL ; 
 int HIDP_DATA_RTYPE_OUPUT ; 
 int HIDP_TRANS_SETREPORT ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 scalar_t__ STATE_DISCONNECTED ; 
 scalar_t__ STATE_DISCONNECTING ; 
 scalar_t__ FUNC1 (struct ctrl_req_t*) ; 
 scalar_t__ FUNC2 (struct ctrl_req_t*) ; 
 int /*<<< orphan*/  bte_ctrl_reqs ; 
 struct ctrl_req_t* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ctrl_req_t*) ; 
 struct pbuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

s32 FUNC7(struct bte_pcb *pcb,void *message,u16 len)
{
	s32 err = ERR_VAL;
	struct pbuf *p;
	struct ctrl_req_t *req;

	//printf("bte_sendmessage()\n");

	if(pcb==NULL || message==NULL || len==0) return ERR_VAL;
	if(pcb->state==STATE_DISCONNECTING || pcb->state==STATE_DISCONNECTED) return ERR_CLSD;

	if((req=FUNC3(&bte_ctrl_reqs))==NULL) {
		FUNC0("bte_sendmessage: Could not allocate memory for request\n");
		return ERR_MEM;
	}

	if((p=FUNC5(PBUF_RAW,(1 + len),PBUF_RAM))==NULL) {
		FUNC0("bte_sendmessage: Could not allocate memory for pbuf\n");
		FUNC4(&bte_ctrl_reqs,req);
		return ERR_MEM;
	}

	((u8*)p->payload)[0] = (HIDP_TRANS_SETREPORT|HIDP_DATA_RTYPE_OUPUT);
	FUNC6(p->payload+1,message,len);

	req->p = p;
	req->pcb = pcb;
	req->sent = NULL;
	err = FUNC1(req);
	if(err==ERR_OK) err = FUNC2(req);

	FUNC4(&bte_ctrl_reqs,req);
	return err;
}