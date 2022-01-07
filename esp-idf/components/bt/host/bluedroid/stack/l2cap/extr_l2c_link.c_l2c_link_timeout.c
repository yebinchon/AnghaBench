
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* p_first_ccb; } ;
struct TYPE_12__ {scalar_t__ link_state; int timer_entry; int handle; scalar_t__ is_bonding; TYPE_1__ ccb_queue; int (* p_echo_rsp_cb ) (int ) ;int * p_pending_ccb; } ;
typedef TYPE_2__ tL2C_LCB ;
struct TYPE_13__ {struct TYPE_13__* p_next_ccb; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int (* tL2CA_ECHO_RSP_CB ) (int ) ;
typedef scalar_t__ tBTM_STATUS ;
typedef int UINT16 ;
struct TYPE_14__ {scalar_t__ is_ble_connecting; int ble_connecting_bda; } ;


 scalar_t__ BTM_BUSY ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_CMD_STORED ;
 scalar_t__ BTM_SUCCESS ;
 int BTU_TTYPE_L2CAP_LINK ;
 int BT_1SEC_TIMEOUT ;
 int HCI_ERR_PEER_USER ;
 int L2CAP_LINK_DISCONNECT_TOUT ;
 int L2CAP_PING_RESULT_NO_RESP ;
 int L2CAP_TRACE_EVENT (char*,scalar_t__,TYPE_3__*,scalar_t__) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int L2CA_CancelBleConnectReq (int ) ;
 int L2CEVT_LP_DISCONNECT_IND ;
 scalar_t__ LST_CONNECTED ;
 scalar_t__ LST_CONNECTING ;
 scalar_t__ LST_CONNECTING_WAIT_SWITCH ;
 scalar_t__ LST_CONNECT_HOLDING ;
 scalar_t__ LST_DISCONNECTING ;
 scalar_t__ TRUE ;
 scalar_t__ btm_sec_disconnect (int ,int ) ;
 scalar_t__ btsnd_hcic_disconnect (int ,int ) ;
 int btu_start_timer (int *,int ,int) ;
 int l2c_csm_execute (TYPE_3__*,int ,int *) ;
 int l2c_link_check_send_pkts (TYPE_2__*,int *,int *) ;
 TYPE_6__ l2cb ;
 int l2cu_process_fixed_disc_cback (TYPE_2__*) ;
 int l2cu_release_lcb (TYPE_2__*) ;
 int stub1 (int ) ;

void l2c_link_timeout (tL2C_LCB *p_lcb)
{

    tL2C_CCB *p_ccb;


    UINT16 timeout;
    tBTM_STATUS rc;

    L2CAP_TRACE_EVENT ("L2CAP - l2c_link_timeout() link state %d first CCB %p is_bonding:%d",
                       p_lcb->link_state, p_lcb->ccb_queue.p_first_ccb, p_lcb->is_bonding);


    if ((p_lcb->link_state == LST_CONNECTING_WAIT_SWITCH) ||
            (p_lcb->link_state == LST_CONNECTING) ||
            (p_lcb->link_state == LST_CONNECT_HOLDING) ||
            (p_lcb->link_state == LST_DISCONNECTING)) {
        p_lcb->p_pending_ccb = ((void*)0);



        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; ) {
            tL2C_CCB *pn = p_ccb->p_next_ccb;

            l2c_csm_execute (p_ccb, L2CEVT_LP_DISCONNECT_IND, ((void*)0));

            p_ccb = pn;
        }


        if (p_lcb->link_state == LST_CONNECTING &&
                l2cb.is_ble_connecting == TRUE) {
            L2CA_CancelBleConnectReq(l2cb.ble_connecting_bda);
        }


        l2cu_release_lcb (p_lcb);
    }


    if (p_lcb->link_state == LST_CONNECTED) {

        if (p_lcb->p_echo_rsp_cb) {
            tL2CA_ECHO_RSP_CB *p_cb = p_lcb->p_echo_rsp_cb;


            p_lcb->p_echo_rsp_cb = ((void*)0);

            (*p_cb) (L2CAP_PING_RESULT_NO_RESP);

            L2CAP_TRACE_WARNING ("L2CAP - ping timeout");



            for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; ) {
                tL2C_CCB *pn = p_ccb->p_next_ccb;

                l2c_csm_execute (p_ccb, L2CEVT_LP_DISCONNECT_IND, ((void*)0));

                p_ccb = pn;
            }

        }



        if (!p_lcb->ccb_queue.p_first_ccb) {
            rc = btm_sec_disconnect (p_lcb->handle, HCI_ERR_PEER_USER);

            if (rc == BTM_CMD_STORED) {

                timeout = 0xFFFF;
            } else if (rc == BTM_CMD_STARTED) {
                p_lcb->link_state = LST_DISCONNECTING;
                timeout = L2CAP_LINK_DISCONNECT_TOUT;
            } else if (rc == BTM_SUCCESS) {
                l2cu_process_fixed_disc_cback(p_lcb);

                p_lcb->link_state = LST_DISCONNECTING;
                timeout = 0xFFFF;
            } else if (rc == BTM_BUSY) {

                timeout = 0xFFFF;
            } else if ((p_lcb->is_bonding)
                       && (btsnd_hcic_disconnect (p_lcb->handle, HCI_ERR_PEER_USER))) {
                l2cu_process_fixed_disc_cback(p_lcb);
                p_lcb->link_state = LST_DISCONNECTING;
                timeout = L2CAP_LINK_DISCONNECT_TOUT;
            } else {

                timeout = BT_1SEC_TIMEOUT;
            }

            if (timeout != 0xFFFF) {
                btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, timeout);
            }
        } else {

            l2c_link_check_send_pkts (p_lcb, ((void*)0), ((void*)0));
        }

    }
}
