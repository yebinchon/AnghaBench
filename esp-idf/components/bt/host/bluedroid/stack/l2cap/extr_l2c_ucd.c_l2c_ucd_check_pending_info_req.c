
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int state; } ;
struct TYPE_16__ {TYPE_1__ ucd; scalar_t__ in_use; } ;
typedef TYPE_5__ tL2C_RCB ;
struct TYPE_17__ {TYPE_7__* p_lcb; TYPE_4__* p_rcb; } ;
typedef TYPE_6__ tL2C_CCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_19__ {TYPE_5__* rcb_pool; } ;
struct TYPE_18__ {int info_rx_bits; int peer_ext_fea; scalar_t__ w4_info_rsp; int ucd_mtu; int remote_bd_addr; } ;
struct TYPE_13__ {int (* pL2CA_UCD_Discover_Cb ) (int ,int ,int) ;} ;
struct TYPE_14__ {TYPE_2__ cb_info; } ;
struct TYPE_15__ {TYPE_3__ ucd; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int L2CAP_CONNLESS_MTU_INFO_TYPE ;
 int L2CAP_EXTENDED_FEATURES_INFO_TYPE ;
 int L2CAP_EXTFEA_UCD_RECEPTION ;
 int L2CAP_TRACE_ERROR (char*) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int L2CAP_UCD_INFO_TYPE_MTU ;
 int L2CAP_UCD_INFO_TYPE_RECEPTION ;
 int L2C_UCD_STATE_W4_MTU ;
 int L2C_UCD_STATE_W4_RECEPTION ;
 scalar_t__ MAX_L2CAP_CLIENTS ;
 scalar_t__ TRUE ;
 int l2c_ucd_delete_sec_pending_q (TYPE_7__*) ;
 TYPE_9__ l2cb ;
 int l2cu_release_ccb (TYPE_6__*) ;
 int l2cu_send_peer_info_req (TYPE_7__*,int) ;
 int stub1 (int ,int ,int) ;
 int stub2 (int ,int ,int) ;

BOOLEAN l2c_ucd_check_pending_info_req(tL2C_CCB *p_ccb)
{
    tL2C_RCB *p_rcb = &l2cb.rcb_pool[0];
    UINT16 xx;
    BOOLEAN pending = FALSE;

    if (p_ccb == ((void*)0)) {
        L2CAP_TRACE_ERROR ("L2CAP - NULL p_ccb in l2c_ucd_check_pending_info_req");
        return (FALSE);
    }

    for (xx = 0; xx < MAX_L2CAP_CLIENTS; xx++, p_rcb++) {
        if (p_rcb->in_use) {

            if (p_rcb->ucd.state & L2C_UCD_STATE_W4_RECEPTION) {

                if ( p_ccb->p_lcb->info_rx_bits & (1 << L2CAP_EXTENDED_FEATURES_INFO_TYPE) ) {
                    if (!(p_ccb->p_lcb->peer_ext_fea & L2CAP_EXTFEA_UCD_RECEPTION)) {
                        L2CAP_TRACE_WARNING ("L2CAP - UCD is not supported by peer, l2c_ucd_check_pending_info_req");

                        l2c_ucd_delete_sec_pending_q(p_ccb->p_lcb);
                        l2cu_release_ccb (p_ccb);
                    }

                    p_ccb->p_rcb->ucd.cb_info.pL2CA_UCD_Discover_Cb (p_ccb->p_lcb->remote_bd_addr,
                            L2CAP_UCD_INFO_TYPE_RECEPTION,
                            p_ccb->p_lcb->peer_ext_fea & L2CAP_EXTFEA_UCD_RECEPTION);
                } else {
                    pending = TRUE;
                    if (p_ccb->p_lcb->w4_info_rsp == FALSE) {
                        l2cu_send_peer_info_req (p_ccb->p_lcb, L2CAP_EXTENDED_FEATURES_INFO_TYPE);
                    }
                }
            }


            if (p_rcb->ucd.state & L2C_UCD_STATE_W4_MTU) {

                if ( p_ccb->p_lcb->info_rx_bits & (1 << L2CAP_CONNLESS_MTU_INFO_TYPE)) {
                    p_ccb->p_rcb->ucd.cb_info.pL2CA_UCD_Discover_Cb (p_ccb->p_lcb->remote_bd_addr,
                            L2CAP_UCD_INFO_TYPE_MTU,
                            p_ccb->p_lcb->ucd_mtu);
                } else {
                    pending = TRUE;
                    if (p_ccb->p_lcb->w4_info_rsp == FALSE) {
                        l2cu_send_peer_info_req (p_ccb->p_lcb, L2CAP_CONNLESS_MTU_INFO_TYPE);
                    }
                }
            }
        }
    }
    return (pending);
}
