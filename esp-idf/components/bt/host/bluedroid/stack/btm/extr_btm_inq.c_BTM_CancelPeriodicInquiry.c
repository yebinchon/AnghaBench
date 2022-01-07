
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_INQ_RESULTS_CB ;
struct TYPE_3__ {int inq_active; int inq_counter; scalar_t__ inqfilt_active; int pending_filt_complete_event; int * p_inq_results_cb; } ;
typedef TYPE_1__ tBTM_INQUIRY_VAR_ST ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 int BTM_INQUIRY_INACTIVE ;
 int BTM_IsDeviceUp () ;
 int BTM_NO_RESOURCES ;
 int BTM_PERIODIC_INQUIRY_ACTIVE ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*) ;
 int BTM_WRONG_MODE ;
 scalar_t__ FALSE ;
 TYPE_2__ btm_cb ;
 int btsnd_hcic_exit_per_inq () ;

tBTM_STATUS BTM_CancelPeriodicInquiry(void)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;
    tBTM_STATUS status = BTM_SUCCESS;
    BTM_TRACE_API ("BTM_CancelPeriodicInquiry called\n");


    if (!BTM_IsDeviceUp()) {
        return (BTM_WRONG_MODE);
    }


    if (btm_cb.btm_inq_vars.inq_active & BTM_PERIODIC_INQUIRY_ACTIVE) {
        btm_cb.btm_inq_vars.inq_active = BTM_INQUIRY_INACTIVE;
        btm_cb.btm_inq_vars.p_inq_results_cb = (tBTM_INQ_RESULTS_CB *) ((void*)0);

        if (!btsnd_hcic_exit_per_inq ()) {
            status = BTM_NO_RESOURCES;
        }



        if (p_inq->inqfilt_active) {
            p_inq->pending_filt_complete_event++;
        }

        p_inq->inqfilt_active = FALSE;
        p_inq->inq_counter++;
    }

    return (status);
}
