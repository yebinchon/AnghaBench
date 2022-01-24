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
struct pbuf {int tot_len; struct l2cap_hdr* payload; } ;
struct l2cap_sig_hdr {int code; int /*<<< orphan*/  id; void* len; } ;
struct l2cap_sig {struct pbuf* p; int /*<<< orphan*/  sigid; int /*<<< orphan*/  nrtx; int /*<<< orphan*/  rtx; } ;
struct l2cap_pcb {int /*<<< orphan*/  unrsp_sigs; } ;
struct l2cap_hdr {void* cid; void* len; } ;
struct bd_addr {int dummy; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERR_MEM ; 
 scalar_t__ ERR_OK ; 
 int L2CAP_HDR_LEN ; 
 int /*<<< orphan*/  L2CAP_MAXRTX ; 
 int /*<<< orphan*/  L2CAP_RTX ; 
 int L2CAP_SIGHDR_LEN ; 
 int L2CAP_SIG_CID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct l2cap_sig*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 struct l2cap_sig* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct l2cap_sig*) ; 
 struct pbuf* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct pbuf*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  l2cap_sigs ; 
 scalar_t__ FUNC10 (struct bd_addr*,struct pbuf*,int) ; 

err_t FUNC11(struct l2cap_pcb *pcb, u8_t code, u16_t ursp_id, struct bd_addr *remote_bdaddr, struct pbuf *data)
{
	struct l2cap_sig *sig;
	struct l2cap_sig_hdr *sighdr;
	struct l2cap_hdr *hdr;
	err_t ret;

	/* Alloc a new signal */
	FUNC2("l2cap_signal: Allocate memory for l2cap_sig. Code = 0x%x\n", code);
	if((sig = FUNC3(&l2cap_sigs)) == NULL) {
		FUNC0("l2cap_signal: could not allocate memory for l2cap_sig\n");
		return ERR_MEM;
	}

	/* Alloc a pbuf for signal */
	if((sig->p = FUNC5(PBUF_RAW, L2CAP_HDR_LEN+L2CAP_SIGHDR_LEN, PBUF_RAM)) == NULL) {
		FUNC0("l2cap_signal: could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	/* Setup signal header and leave room for l2cap hdr */
	sighdr = (struct l2cap_sig_hdr *)(((u8_t *)sig->p->payload)+L2CAP_HDR_LEN);

	/* Chain data to signal and set length of signal data */
	if(data == NULL) {
		sighdr->len = 0;
	} else {
		FUNC6(sig->p, data);
		FUNC7(data);
		sighdr->len = FUNC8(data->tot_len);
	}

	sighdr->code = code;

	if(sighdr->code % 2) { /* If odd this is a resp/rej signal */
		sig->sigid = ursp_id; /* Get id */
		FUNC2("l2cap_signal: Sending response/reject signal with id = %d code = %d\n", sig->sigid, sighdr->code);
	} else {
		sig->sigid = FUNC9(); /* Alloc id */
		sig->rtx = L2CAP_RTX; /* Set Response Timeout Expired timer (in seconds)
		should be at least as large as the BB flush timeout */
		sig->nrtx = L2CAP_MAXRTX; /* Set max number of retransmissions */
		FUNC2("l2cap_signal: Sending request signal with id = %d code = %d\n", sig->sigid, sighdr->code);
	}
	sighdr->id = sig->sigid; /* Set id */

	/* Set up L2CAP hdr */
	hdr = sig->p->payload;
	hdr->len = FUNC8((sig->p->tot_len - L2CAP_HDR_LEN));
	hdr->cid = FUNC8(L2CAP_SIG_CID); /* 0x0001 */

	ret = FUNC10(remote_bdaddr, sig->p, sig->p->tot_len); /* Send peer L2CAP signal */

	/* Put signal on unresponded list if it's a request signal, else deallocate it */
	if(ret == ERR_OK && (sighdr->code % 2) == 0) {
		FUNC2("l2cap_signal: Registering sent request signal with id = %d code = %d\n", sig->sigid, sighdr->code);
		FUNC1(&(pcb->unrsp_sigs), sig);
	} else {
		FUNC2("l2cap_signal: Deallocating sent response/reject signal with id = %d code = %d\n", sig->sigid, sighdr->code);
		FUNC7(sig->p);
		sig->p = NULL;
		FUNC4(&l2cap_sigs, sig);
	}

  return ret;
}