#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ tL2C_CONN_INFO ;
struct TYPE_16__ {int chnl_state; int /*<<< orphan*/  timer_entry; TYPE_1__* p_lcb; int /*<<< orphan*/  fixed_chnl_idle_tout; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_14__ {int /*<<< orphan*/  ucd_in_sec_pending_q; int /*<<< orphan*/  ucd_out_sec_pending_q; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_DELAY_CHECK ; 
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_CHNL ; 
#define  CST_CLOSED 139 
#define  CST_OPEN 138 
#define  CST_ORIG_W4_SEC_COMP 137 
#define  CST_TERM_W4_SEC_COMP 136 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
#define  L2CEVT_L2CAP_DATA 135 
#define  L2CEVT_L2CAP_INFO_RSP 134 
#define  L2CEVT_L2CA_DATA_WRITE 133 
#define  L2CEVT_LP_CONNECT_CFM 132 
#define  L2CEVT_SEC_COMP 131 
#define  L2CEVT_SEC_COMP_NEG 130 
#define  L2CEVT_SEC_RE_SEND_CMD 129 
#define  L2CEVT_TIMEOUT 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

BOOLEAN FUNC13(tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    /* if the event is not processed by this function, this variable will be set to FALSE */
    BOOLEAN done = TRUE;

    switch (p_ccb->chnl_state) {
    case CST_CLOSED:
        switch (event) {
        case L2CEVT_LP_CONNECT_CFM:     /* Link came up         */
            /* check if waiting for UCD info */
            if (!FUNC5 (p_ccb)) {
                /* check if any outgoing UCD packet is waiting security check */
                if (!FUNC6(p_ccb)) {
                    p_ccb->chnl_state = CST_OPEN;
                }
            }
            break;

        case L2CEVT_L2CAP_DATA:         /* Peer data packet rcvd    */
            FUNC2(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            break;

        case L2CEVT_L2CA_DATA_WRITE:    /* Upper layer data to send */
            FUNC9(p_ccb, p_data);
            break;

        case L2CEVT_L2CAP_INFO_RSP:
            /* check if waiting for UCD info */
            if (!FUNC5 (p_ccb)) {
                /* check if any outgoing UCD packet is waiting security check */
                if (!FUNC6(p_ccb)) {
                    p_ccb->chnl_state = CST_OPEN;
                }
            }
            break;

        default:
            done = FALSE;   /* main state machine continues to process event */
            break;
        }
        break;

    case CST_ORIG_W4_SEC_COMP:
        switch (event) {
        case L2CEVT_SEC_RE_SEND_CMD:    /* BTM has enough info to proceed */
            /* check if any outgoing UCD packet is waiting security check */
            if (!FUNC6(p_ccb)) {
                p_ccb->chnl_state = CST_OPEN;
            }
            break;

        case L2CEVT_SEC_COMP:           /* Security completed success */
            p_ccb->chnl_state = CST_OPEN;
            FUNC11(p_ccb);

            if (! FUNC3(p_ccb->p_lcb->ucd_out_sec_pending_q))
            {
                /* start a timer to send next UCD packet in OPEN state */
                /* it will prevent stack overflow */
                FUNC0 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, 0);
            } else {
                /* start a timer for idle timeout of UCD */
                FUNC0 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            }
            break;

        case L2CEVT_SEC_COMP_NEG:
            p_ccb->chnl_state = CST_OPEN;
            FUNC8(p_ccb);

            /* start a timer for idle timeout of UCD */
            FUNC0 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            break;

        case L2CEVT_L2CA_DATA_WRITE:    /* Upper layer data to send */
            FUNC9(p_ccb, p_data);
            break;

        case L2CEVT_L2CAP_DATA:         /* Peer data packet rcvd    */
            FUNC2(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            break;

        case L2CEVT_L2CAP_INFO_RSP:
            /* check if waiting for UCD info */
            FUNC5 (p_ccb);
            break;

        default:
            done = FALSE;   /* main state machine continues to process event */
            break;
        }
        break;


    case CST_TERM_W4_SEC_COMP:
        switch (event) {
        case L2CEVT_SEC_COMP:
            p_ccb->chnl_state = CST_OPEN;
            FUNC10 (p_ccb);

            if (! FUNC3(p_ccb->p_lcb->ucd_in_sec_pending_q)) {
                /* start a timer to check next UCD packet in OPEN state */
                /* it will prevent stack overflow */
                FUNC0 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, 0);
            } else {
                /* start a timer for idle timeout of UCD */
                FUNC0 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            }
            break;

        case L2CEVT_SEC_COMP_NEG:
            if (((tL2C_CONN_INFO *)p_data)->status == BTM_DELAY_CHECK) {
                done = FALSE;
                break;
            }
            p_ccb->chnl_state = CST_OPEN;
            FUNC7 (p_ccb);

            /* start a timer for idle timeout of UCD */
            FUNC0 (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, p_ccb->fixed_chnl_idle_tout);
            break;

        case L2CEVT_L2CA_DATA_WRITE:        /* Upper layer data to send */
            FUNC9(p_ccb, p_data);
            break;

        case L2CEVT_L2CAP_DATA:             /* Peer data packet rcvd    */
            FUNC2(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            break;

        case L2CEVT_SEC_RE_SEND_CMD:        /* BTM has enough info to proceed */
            /* check if any incoming UCD packet is waiting security check */
            if (!FUNC4(p_ccb)) {
                p_ccb->chnl_state = CST_OPEN;
            }
            break;

        case L2CEVT_L2CAP_INFO_RSP:
            /* check if waiting for UCD info */
            FUNC5 (p_ccb);
            break;

        default:
            done = FALSE;   /* main state machine continues to process event */
            break;
        }
        break;

    case CST_OPEN:
        switch (event) {
        case L2CEVT_L2CAP_DATA:             /* Peer data packet rcvd    */
            /* stop idle timer of UCD */
            FUNC1 (&p_ccb->timer_entry);

            FUNC2(p_ccb->p_lcb->ucd_in_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
            FUNC4 (p_ccb);
            break;

        case L2CEVT_L2CA_DATA_WRITE:        /* Upper layer data to send */
            /* stop idle timer of UCD */
            FUNC1 (&p_ccb->timer_entry);

            FUNC9(p_ccb, p_data);

            /* coverity[check_return] */ /* coverity[unchecked_value] */
            /* success changes state, failure stays in current state */
            FUNC6 (p_ccb);
            break;

        case L2CEVT_TIMEOUT:
            /* check if any UCD packet is waiting security check */
            if ((!FUNC4(p_ccb))
                    && (!FUNC6(p_ccb))) {
                FUNC12 (p_ccb);
            }
            break;

        case L2CEVT_L2CAP_INFO_RSP:
            /* check if waiting for UCD info */
            FUNC5 (p_ccb);
            break;

        default:
            done = FALSE;   /* main state machine continues to process event */
            break;
        }
        break;

    default:
        done = FALSE;   /* main state machine continues to process event */
        break;
    }

    return done;
}