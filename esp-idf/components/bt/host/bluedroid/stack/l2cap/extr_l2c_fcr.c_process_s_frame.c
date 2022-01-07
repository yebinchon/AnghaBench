
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* send_f_rsp; scalar_t__ local_busy; scalar_t__ srej_sent; void* remote_busy; void* rej_sent; int * s_frames_rcvd; } ;
typedef TYPE_1__ tL2C_FCRB ;
struct TYPE_11__ {TYPE_1__ fcrb; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef int UINT8 ;
typedef size_t UINT16 ;
struct TYPE_12__ {scalar_t__ len; } ;
typedef TYPE_3__ BT_HDR ;
typedef void* BOOLEAN ;


 void* FALSE ;
 size_t L2CAP_FCR_F_BIT ;
 size_t L2CAP_FCR_P_BIT ;
 size_t L2CAP_FCR_REQ_SEQ_BITS ;
 size_t L2CAP_FCR_REQ_SEQ_BITS_SHIFT ;
 size_t L2CAP_FCR_SUP_BITS ;



 size_t L2CAP_FCR_SUP_SHIFT ;

 int L2CAP_TRACE_DEBUG (char*,...) ;
 int L2CAP_TRACE_WARNING (char*,scalar_t__) ;
 int L2C_FCR_RETX_ALL_PKTS ;
 void* TRUE ;
 int assert (int ) ;
 int l2c_fcr_send_S_frame (TYPE_2__*,int const,size_t) ;
 int l2c_fcr_stop_timer (TYPE_2__*) ;
 int osi_free (TYPE_3__*) ;
 void* retransmit_i_frames (TYPE_2__*,int ) ;

__attribute__((used)) static void process_s_frame (tL2C_CCB *p_ccb, BT_HDR *p_buf, UINT16 ctrl_word)
{
    assert(p_ccb != ((void*)0));
    assert(p_buf != ((void*)0));

    tL2C_FCRB *p_fcrb = &p_ccb->fcrb;
    UINT16 s_frame_type = (ctrl_word & L2CAP_FCR_SUP_BITS) >> L2CAP_FCR_SUP_SHIFT;
    BOOLEAN remote_was_busy;
    BOOLEAN all_ok = TRUE;

    if (p_buf->len != 0) {
        L2CAP_TRACE_WARNING ("Incorrect S-frame Length (%d)", p_buf->len);
    }

    L2CAP_TRACE_DEBUG ("process_s_frame ctrl_word 0x%04x fcrb_remote_busy:%d", ctrl_word, p_fcrb->remote_busy);


    p_ccb->fcrb.s_frames_rcvd[s_frame_type]++;


    if (ctrl_word & L2CAP_FCR_P_BIT) {
        p_fcrb->rej_sent = FALSE;
        p_fcrb->send_f_rsp = TRUE;
    }

    switch (s_frame_type) {
    case 129:
        remote_was_busy = p_fcrb->remote_busy;
        p_fcrb->remote_busy = FALSE;

        if ( (ctrl_word & L2CAP_FCR_F_BIT) || (remote_was_busy) ) {
            all_ok = retransmit_i_frames (p_ccb, L2C_FCR_RETX_ALL_PKTS);
        }
        break;

    case 131:
        p_fcrb->remote_busy = FALSE;
        all_ok = retransmit_i_frames (p_ccb, L2C_FCR_RETX_ALL_PKTS);
        break;

    case 130:
        p_fcrb->remote_busy = TRUE;
        l2c_fcr_stop_timer (p_ccb);
        break;

    case 128:
        p_fcrb->remote_busy = FALSE;
        all_ok = retransmit_i_frames (p_ccb, (UINT8)((ctrl_word & L2CAP_FCR_REQ_SEQ_BITS) >> L2CAP_FCR_REQ_SEQ_BITS_SHIFT));
        break;
    }

    if (all_ok) {

        if (p_fcrb->send_f_rsp) {
            if (p_fcrb->srej_sent) {
                l2c_fcr_send_S_frame (p_ccb, 128, L2CAP_FCR_F_BIT);
            } else if (p_fcrb->local_busy) {
                l2c_fcr_send_S_frame (p_ccb, 130, L2CAP_FCR_F_BIT);
            } else {
                l2c_fcr_send_S_frame (p_ccb, 129, L2CAP_FCR_F_BIT);
            }

            p_fcrb->send_f_rsp = FALSE;
        }
    } else {
        L2CAP_TRACE_DEBUG ("process_s_frame hit_max_retries");
    }

    osi_free (p_buf);
}
