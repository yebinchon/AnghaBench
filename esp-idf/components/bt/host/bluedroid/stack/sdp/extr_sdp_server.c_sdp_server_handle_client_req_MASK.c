#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  timer_entry; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_10__ {int offset; int len; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  BTU_TTYPE_SDP ; 
 int /*<<< orphan*/  SDP_INACT_TIMEOUT ; 
 int /*<<< orphan*/  SDP_INVALID_PDU_SIZE ; 
 int /*<<< orphan*/  SDP_INVALID_REQ_SYNTAX ; 
#define  SDP_PDU_SERVICE_ATTR_REQ 130 
#define  SDP_PDU_SERVICE_SEARCH_ATTR_REQ 129 
#define  SDP_PDU_SERVICE_SEARCH_REQ 128 
 int /*<<< orphan*/  SDP_TEXT_BAD_HEADER ; 
 int /*<<< orphan*/  SDP_TEXT_BAD_PDU ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7 (tCONN_CB *p_ccb, BT_HDR *p_msg)
{
    UINT8   *p_req     = (UINT8 *) (p_msg + 1) + p_msg->offset;
    UINT8   *p_req_end = p_req + p_msg->len;
    UINT8   pdu_id;
    UINT16  trans_num, param_len;


    /* Start inactivity timer */
    FUNC2 (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);

    /* The first byte in the message is the pdu type */
    pdu_id = *p_req++;

    /* Extract the transaction number and parameter length */
    FUNC0 (trans_num, p_req);
    FUNC0 (param_len, p_req);

    if ((p_req + param_len) != p_req_end) {
        FUNC6 (p_ccb, trans_num, SDP_INVALID_PDU_SIZE, SDP_TEXT_BAD_HEADER);
        return;
    }

    switch (pdu_id) {
    case SDP_PDU_SERVICE_SEARCH_REQ:
        FUNC4 (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    case SDP_PDU_SERVICE_ATTR_REQ:
        FUNC3 (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    case SDP_PDU_SERVICE_SEARCH_ATTR_REQ:
        FUNC5 (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    default:
        FUNC6 (p_ccb, trans_num, SDP_INVALID_REQ_SYNTAX, SDP_TEXT_BAD_PDU);
        FUNC1 ("SDP - server got unknown PDU: 0x%x\n", pdu_id);
        break;
    }
}