
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_INQ_RESULTS_CB ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {int inq_active; int inq_counter; TYPE_1__ inqparms; int pending_filt_complete_event; scalar_t__ inqfilt_active; int * p_inq_cmpl_cb; int * p_inq_results_cb; int state; } ;
typedef TYPE_2__ tBTM_INQUIRY_VAR_ST ;
typedef int tBTM_CMPL_CB ;
typedef int UINT8 ;
struct TYPE_6__ {TYPE_2__ btm_inq_vars; } ;


 int BTM_BLE_INQUIRY_MASK ;
 int BTM_BLE_INQ_ACTIVE_MASK ;
 int BTM_BR_INQUIRY_MASK ;
 int BTM_INQUIRY_ACTIVE_MASK ;
 int BTM_INQUIRY_INACTIVE ;
 int BTM_INQ_INACTIVE_STATE ;
 int BTM_IsDeviceUp () ;
 int BTM_NO_RESOURCES ;
 int BTM_PERIODIC_INQUIRY_ACTIVE ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*) ;
 int BTM_WRONG_MODE ;
 scalar_t__ FALSE ;
 int btm_ble_stop_inquiry () ;
 TYPE_3__ btm_cb ;
 int btm_clr_inq_result_flt () ;
 int btsnd_hcic_inq_cancel () ;

tBTM_STATUS BTM_CancelInquiry(void)
{
    tBTM_STATUS status = BTM_SUCCESS;
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;



    BTM_TRACE_API ("BTM_CancelInquiry called\n");


    if (!BTM_IsDeviceUp()) {
        return (BTM_WRONG_MODE);
    }


    if ((p_inq->inq_active & BTM_INQUIRY_ACTIVE_MASK) != 0 &&
            (!(p_inq->inq_active & BTM_PERIODIC_INQUIRY_ACTIVE))) {
        p_inq->inq_active = BTM_INQUIRY_INACTIVE;
        p_inq->state = BTM_INQ_INACTIVE_STATE;
        p_inq->p_inq_results_cb = (tBTM_INQ_RESULTS_CB *) ((void*)0);
        p_inq->p_inq_cmpl_cb = (tBTM_CMPL_CB *) ((void*)0);



        if (p_inq->inqfilt_active) {
            p_inq->inqfilt_active = FALSE;
            p_inq->pending_filt_complete_event++;
        }

        else {
            if (((p_inq->inqparms.mode & BTM_BR_INQUIRY_MASK) != 0)



               ) {
                if (!btsnd_hcic_inq_cancel()) {
                    status = BTM_NO_RESOURCES;
                }
            }

            if (((p_inq->inqparms.mode & BTM_BLE_INQUIRY_MASK) != 0)



               ) {
                btm_ble_stop_inquiry();
            }

        }






        p_inq->inq_counter++;
        btm_clr_inq_result_flt();
    }

    return (status);
}
