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
typedef  int /*<<< orphan*/  u16_t ;
struct ctrl_req_t {int /*<<< orphan*/  (* sent ) (int /*<<< orphan*/ ,struct bte_pcb*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  err; struct ctrl_req_t* next; } ;
struct bte_pcb {int /*<<< orphan*/  cmdq; int /*<<< orphan*/  cbarg; struct ctrl_req_t* ctrl_req_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
#define  HIDP_HSHK_FATALERROR 134 
#define  HIDP_HSHK_INV_REPORTID 133 
#define  HIDP_HSHK_IVALIDPARAM 132 
#define  HIDP_HSHK_NOTREADY 131 
#define  HIDP_HSHK_NOTSUPPORTED 130 
#define  HIDP_HSHK_SUCCESSFULL 129 
#define  HIDP_HSHK_UNKNOWNERROR 128 
 int /*<<< orphan*/  FUNC0 (char*,struct bte_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_SENT ; 
 int /*<<< orphan*/  FUNC2 (struct bte_pcb*) ; 
 int /*<<< orphan*/  bte_ctrl_reqs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ctrl_req_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bte_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bte_pcb *pcb,u8_t param,void *buf,u16_t len)
{
	struct ctrl_req_t *req;

	FUNC0("bte_process_handshake(%p)\n",pcb);

	switch(param) {
		case HIDP_HSHK_SUCCESSFULL:
			req = pcb->ctrl_req_head;
			pcb->ctrl_req_head = req->next;

			req->err = ERR_OK;
			req->state = STATE_SENT;
			if(req->sent) {
				req->sent(pcb->cbarg,pcb,ERR_OK);
				FUNC3(&bte_ctrl_reqs,req);
			} else
				FUNC1(pcb->cmdq);

			FUNC2(pcb);
			break;
		case HIDP_HSHK_NOTREADY:
		case HIDP_HSHK_INV_REPORTID:
		case HIDP_HSHK_NOTSUPPORTED:
		case HIDP_HSHK_IVALIDPARAM:
		case HIDP_HSHK_UNKNOWNERROR:
			break;
		case HIDP_HSHK_FATALERROR:
			break;
		default:
			break;
	}
}