#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16_t ;
struct pbuf {scalar_t__ tot_len; struct hci_acl_hdr* payload; } ;
struct l2cap_seg {scalar_t__ len; struct pbuf* p; TYPE_1__* pcb; struct hci_acl_hdr* l2caphdr; int /*<<< orphan*/  bdaddr; struct l2cap_seg* next; } ;
struct hci_acl_hdr {int len; int connhdl_pb_bc; int cid; } ;
struct bd_addr {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_3__ {int scid; struct TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ HCI_ACL_HDR_LEN ; 
 int L2CAP_ACL_CONT ; 
 int L2CAP_ACL_START ; 
 int /*<<< orphan*/  L2CAP_CMD_REJ ; 
 int /*<<< orphan*/  L2CAP_CMD_REJ_SIZE ; 
#define  L2CAP_CONNLESS_CID 130 
 scalar_t__ L2CAP_HDR_LEN ; 
 int const L2CAP_INVALID_CID ; 
#define  L2CAP_NULL_CID 129 
 int /*<<< orphan*/  FUNC0 (struct l2cap_seg**,struct l2cap_seg*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_seg**,struct l2cap_seg*) ; 
#define  L2CAP_SIG_CID 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct pbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 scalar_t__ FUNC4 (struct bd_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bd_addr*) ; 
 struct l2cap_seg* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct l2cap_seg*) ; 
 struct pbuf* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pbuf*,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct pbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct pbuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (int const) ; 
 TYPE_1__* l2cap_active_pcbs ; 
 struct l2cap_seg* l2cap_insegs ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct pbuf*,struct hci_acl_hdr*,struct bd_addr*) ; 
 int /*<<< orphan*/  l2cap_segs ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bd_addr*,struct pbuf*) ; 
 void* FUNC17 (int) ; 

void FUNC18(struct pbuf *p, struct bd_addr *bdaddr)
{
	struct l2cap_seg *inseg;
	struct hci_acl_hdr *aclhdr;
	struct pbuf *data;
	err_t ret;

	(void)ret;

	FUNC11(p, HCI_ACL_HDR_LEN);
	aclhdr = p->payload;
	FUNC11(p, -HCI_ACL_HDR_LEN);

	FUNC12(p, aclhdr->len);

	for(inseg = l2cap_insegs; inseg != NULL; inseg = inseg->next) {
		if(FUNC4(bdaddr, &(inseg->bdaddr))) {
			break;
		}
	}

	aclhdr->connhdl_pb_bc = FUNC17(aclhdr->connhdl_pb_bc);
	aclhdr->len = FUNC17(aclhdr->len);
	/* Reassembly procedures */
	/* Check if continuing fragment or start of L2CAP packet */
	if(((aclhdr->connhdl_pb_bc >> 12) & 0x03)== L2CAP_ACL_CONT) { /* Continuing fragment */
		if(inseg == NULL)  {
			/* Discard packet */
			FUNC3("l2cap_input: Continuing fragment. Discard packet\n");
			FUNC10(p);
			return;
		} else if(inseg->p->tot_len + p->tot_len > inseg->len) { /* Check if length of
								segment exceeds
								l2cap header length */
			/* Discard packet */
			FUNC3("l2cap_input: Continuing fragment. Length exceeds L2CAP hdr length. Discard packet\n");
			FUNC10(inseg->p);
			FUNC1(&(l2cap_insegs), inseg);
			FUNC7(&l2cap_segs, inseg);

			FUNC10(p);
			return;
		}
		/* Add pbuf to segement */
		FUNC9(inseg->p, p);
		FUNC10(p);

	} else if(((aclhdr->connhdl_pb_bc >> 12) & 0x03) == L2CAP_ACL_START) { /* Start of L2CAP packet */
		//LOG("l2cap_input: Start of L2CAP packet p->len = %d, p->tot_len = %d\n", p->len, p->tot_len);
		if(inseg != NULL) { /* Check if there are segments missing in a previous packet */
			/* Discard previous packet */
			FUNC3("l2cap_input: Start of L2CAP packet. Discard previous packet\n");
			FUNC10(inseg->p);
		} else {
			inseg = FUNC6(&l2cap_segs);
			FUNC5(&(inseg->bdaddr), bdaddr);
			FUNC0(&(l2cap_insegs), inseg);
		}
		inseg->p = p;
		inseg->l2caphdr = p->payload;
		inseg->l2caphdr->cid = FUNC17(inseg->l2caphdr->cid);
		inseg->l2caphdr->len = FUNC17(inseg->l2caphdr->len);

		inseg->len = inseg->l2caphdr->len + L2CAP_HDR_LEN;
		for(inseg->pcb = l2cap_active_pcbs; inseg->pcb != NULL; inseg->pcb = inseg->pcb->next) {
			if(inseg->pcb->scid == inseg->l2caphdr->cid) {
				break; /* found */
			}
		}
	} else {
		/* Discard packet */
		FUNC3("l2cap_input: Discard packet\n");
		FUNC10(inseg->p);
		FUNC1(&(l2cap_insegs), inseg);
		FUNC7(&l2cap_segs, inseg);

		FUNC10(p);
		return;
	}
	if(inseg->p->tot_len < inseg->len) {
		FUNC3("l2cap_input: Get continuing segments\n");
		return; /* Get continuing segments */
	}

	/* Handle packet */
	switch(inseg->l2caphdr->cid) {
		case L2CAP_NULL_CID:
			/* Illegal */
			FUNC3("l2cap_input: Illegal null cid\n");
			FUNC10(inseg->p);
			break;
		case L2CAP_SIG_CID:
			FUNC11(inseg->p, -L2CAP_HDR_LEN);
			FUNC15(inseg->p, inseg->l2caphdr, bdaddr);
			FUNC10(inseg->p);
			break;
		case L2CAP_CONNLESS_CID:
			/* Not needed by PAN, LAN access or DUN profiles */
			FUNC10(inseg->p);
			break;
		default:
			if(inseg->l2caphdr->cid < 0x0040 || inseg->pcb == NULL) {
				/* Reserved for specific L2CAP functions or channel does not exist */
				/* Alloc size of reason in cmd rej */
				if((data = FUNC8(PBUF_RAW, L2CAP_CMD_REJ_SIZE+4, PBUF_RAM)) != NULL) {
					((u16_t *)data->payload)[0] = FUNC13(L2CAP_INVALID_CID);
					((u16_t *)data->payload)[1] = FUNC13(inseg->l2caphdr->cid);
					((u16_t *)data->payload)[2] = FUNC13(L2CAP_NULL_CID);

					ret = FUNC16(NULL, L2CAP_CMD_REJ, FUNC14(), bdaddr, data);
				}
				FUNC10(inseg->p);
				break;
			}

			FUNC11(inseg->p, -L2CAP_HDR_LEN);

			/* Forward packet to higher layer */
			FUNC3("l2cap_input: Forward packet to higher layer\n");
			/*
			LOG("l2cap_input: Remote BD address: 0x%x:0x%x:0x%x:0x%x:0x%x:0x%x\n",
							   inseg->pcb->remote_bdaddr.addr[5],
							   inseg->pcb->remote_bdaddr.addr[4],
							   inseg->pcb->remote_bdaddr.addr[3],
							   inseg->pcb->remote_bdaddr.addr[2],
							   inseg->pcb->remote_bdaddr.addr[1],
							   inseg->pcb->remote_bdaddr.addr[0]));
			*/
			FUNC2(inseg->pcb,inseg->p,ERR_OK,ret);
			break;
	}

	/* Remove input segment */
	FUNC1(&(l2cap_insegs), inseg);
	FUNC7(&l2cap_segs, inseg);
}