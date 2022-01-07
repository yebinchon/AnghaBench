
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int idle_timeout; int timer_entry; void* link_state; int handle; scalar_t__ is_bonding; TYPE_1__** p_fixed_ccbs; } ;
typedef TYPE_2__ tL2C_LCB ;
typedef scalar_t__ tBTM_STATUS ;
typedef int UINT16 ;
struct TYPE_5__ {int fixed_chnl_idle_tout; } ;


 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_SUCCESS ;
 int BTU_TTYPE_L2CAP_LINK ;
 int BT_1SEC_TIMEOUT ;
 int HCI_ERR_PEER_USER ;
 int L2CAP_LINK_DISCONNECT_TOUT ;
 int L2CAP_NUM_FIXED_CHNLS ;
 int L2CAP_TRACE_DEBUG (char*,...) ;
 void* LST_DISCONNECTING ;
 scalar_t__ btm_sec_disconnect (int ,int ) ;
 scalar_t__ btsnd_hcic_disconnect (int ,int ) ;
 int btu_start_timer (int *,int ,int) ;
 int btu_stop_timer (int *) ;
 int l2cu_process_fixed_disc_cback (TYPE_2__*) ;

void l2cu_no_dynamic_ccbs (tL2C_LCB *p_lcb)
{

    tBTM_STATUS rc;

    UINT16 timeout = p_lcb->idle_timeout;
    if (p_lcb->is_bonding) {
        return;
    }

    if (timeout == 0) {
        L2CAP_TRACE_DEBUG ("l2cu_no_dynamic_ccbs() IDLE timer 0, disconnecting link");

        rc = btm_sec_disconnect (p_lcb->handle, HCI_ERR_PEER_USER);
        if (rc == BTM_CMD_STARTED) {
            l2cu_process_fixed_disc_cback(p_lcb);
            p_lcb->link_state = LST_DISCONNECTING;
            timeout = L2CAP_LINK_DISCONNECT_TOUT;
        } else if (rc == BTM_SUCCESS) {
            l2cu_process_fixed_disc_cback(p_lcb);

            p_lcb->link_state = LST_DISCONNECTING;
            timeout = 0xFFFF;
        } else if ( (p_lcb->is_bonding)
                    && (btsnd_hcic_disconnect (p_lcb->handle, HCI_ERR_PEER_USER)) ) {
            l2cu_process_fixed_disc_cback(p_lcb);
            p_lcb->link_state = LST_DISCONNECTING;
            timeout = L2CAP_LINK_DISCONNECT_TOUT;
        } else {

            timeout = BT_1SEC_TIMEOUT;
        }
    }

    if (timeout != 0xFFFF) {
        L2CAP_TRACE_DEBUG ("l2cu_no_dynamic_ccbs() starting IDLE timeout: %d", timeout);
        btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, timeout);
    } else {
        btu_stop_timer(&p_lcb->timer_entry);
    }
}
