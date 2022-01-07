
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* p_first_ccb; } ;
struct TYPE_6__ {int handle; int remote_bd_addr; TYPE_1__ ccb_queue; int link_xmit_data_q; } ;
typedef TYPE_2__ tL2C_LCB ;
struct TYPE_7__ {int xmit_hold_q; struct TYPE_7__* p_next_ccb; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef scalar_t__ tBTM_PM_MODE ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BTM_PM_STS_PENDING ;
 scalar_t__ BTM_ReadPowerMode (int ,scalar_t__*) ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ FALSE ;
 int L2CAP_TRACE_DEBUG (char*,int ) ;
 scalar_t__ TRUE ;
 int fixed_queue_is_empty (int ) ;
 scalar_t__ list_is_empty (int ) ;

BOOLEAN l2c_link_check_power_mode (tL2C_LCB *p_lcb)
{
    tBTM_PM_MODE mode;
    tL2C_CCB *p_ccb;
    BOOLEAN need_to_active = FALSE;




    if (list_is_empty(p_lcb->link_xmit_data_q)) {
        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; p_ccb = p_ccb->p_next_ccb) {
            if (!fixed_queue_is_empty(p_ccb->xmit_hold_q)) {
                need_to_active = TRUE;
                break;
            }
        }
    } else {
        need_to_active = TRUE;
    }


    if ( need_to_active ) {

        if (BTM_ReadPowerMode(p_lcb->remote_bd_addr, &mode) == BTM_SUCCESS) {
            if ( mode == BTM_PM_STS_PENDING ) {
                L2CAP_TRACE_DEBUG ("LCB(0x%x) is in PM pending state\n", p_lcb->handle);

                return TRUE;
            }
        }
    }
    return FALSE;
}
