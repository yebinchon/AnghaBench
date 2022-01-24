#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* send_f_rsp; scalar_t__ local_busy; scalar_t__ srej_sent; void* remote_busy; void* rej_sent; int /*<<< orphan*/ * s_frames_rcvd; } ;
typedef  TYPE_1__ tL2C_FCRB ;
struct TYPE_11__ {TYPE_1__ fcrb; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  size_t UINT16 ;
struct TYPE_12__ {scalar_t__ len; } ;
typedef  TYPE_3__ BT_HDR ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 void* FALSE ; 
 size_t L2CAP_FCR_F_BIT ; 
 size_t L2CAP_FCR_P_BIT ; 
 size_t L2CAP_FCR_REQ_SEQ_BITS ; 
 size_t L2CAP_FCR_REQ_SEQ_BITS_SHIFT ; 
 size_t L2CAP_FCR_SUP_BITS ; 
#define  L2CAP_FCR_SUP_REJ 131 
#define  L2CAP_FCR_SUP_RNR 130 
#define  L2CAP_FCR_SUP_RR 129 
 size_t L2CAP_FCR_SUP_SHIFT ; 
#define  L2CAP_FCR_SUP_SREJ 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  L2C_FCR_RETX_ALL_PKTS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int const,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 void* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (tL2C_CCB *p_ccb, BT_HDR *p_buf, UINT16 ctrl_word)
{
    FUNC2(p_ccb != NULL);
    FUNC2(p_buf != NULL);

    tL2C_FCRB   *p_fcrb      = &p_ccb->fcrb;
    UINT16      s_frame_type = (ctrl_word & L2CAP_FCR_SUP_BITS) >> L2CAP_FCR_SUP_SHIFT;
    BOOLEAN     remote_was_busy;
    BOOLEAN     all_ok = TRUE;

    if (p_buf->len != 0) {
        FUNC1 ("Incorrect S-frame Length (%d)", p_buf->len);
    }

    FUNC0 ("process_s_frame ctrl_word 0x%04x fcrb_remote_busy:%d", ctrl_word, p_fcrb->remote_busy);

#if (L2CAP_ERTM_STATS == TRUE)
    p_ccb->fcrb.s_frames_rcvd[s_frame_type]++;
#endif

    if (ctrl_word & L2CAP_FCR_P_BIT) {
        p_fcrb->rej_sent   = FALSE;             /* After checkpoint, we can send anoher REJ */
        p_fcrb->send_f_rsp = TRUE;              /* Set a flag in case an I-frame is pending */
    }

    switch (s_frame_type) {
    case L2CAP_FCR_SUP_RR:
        remote_was_busy     = p_fcrb->remote_busy;
        p_fcrb->remote_busy = FALSE;

        if ( (ctrl_word & L2CAP_FCR_F_BIT) || (remote_was_busy) ) {
            all_ok = FUNC6 (p_ccb, L2C_FCR_RETX_ALL_PKTS);
        }
        break;

    case L2CAP_FCR_SUP_REJ:
        p_fcrb->remote_busy = FALSE;
        all_ok = FUNC6 (p_ccb, L2C_FCR_RETX_ALL_PKTS);
        break;

    case L2CAP_FCR_SUP_RNR:
        p_fcrb->remote_busy = TRUE;
        FUNC4 (p_ccb);
        break;

    case L2CAP_FCR_SUP_SREJ:
        p_fcrb->remote_busy = FALSE;
        all_ok = FUNC6 (p_ccb, (UINT8)((ctrl_word & L2CAP_FCR_REQ_SEQ_BITS) >> L2CAP_FCR_REQ_SEQ_BITS_SHIFT));
        break;
    }

    if (all_ok) {
        /* If polled, we need to respond with F-bit. Note, we may have sent a I-frame with the F-bit */
        if (p_fcrb->send_f_rsp) {
            if (p_fcrb->srej_sent) {
                FUNC3 (p_ccb, L2CAP_FCR_SUP_SREJ, L2CAP_FCR_F_BIT);
            } else if (p_fcrb->local_busy) {
                FUNC3 (p_ccb, L2CAP_FCR_SUP_RNR, L2CAP_FCR_F_BIT);
            } else {
                FUNC3 (p_ccb, L2CAP_FCR_SUP_RR, L2CAP_FCR_F_BIT);
            }

            p_fcrb->send_f_rsp = FALSE;
        }
    } else {
        FUNC0 ("process_s_frame hit_max_retries");
    }

    FUNC5 (p_buf);
}