
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* tBTM_STATUS ;
struct TYPE_5__ {void* status; } ;
typedef TYPE_1__ tBTM_REMOTE_DEV_NAME ;
struct TYPE_6__ {scalar_t__ inq_active; int connectable_mode; int discoverable_mode; void* inq_scan_type; void* page_scan_type; int * p_inq_results_cb; scalar_t__ pending_filt_complete_event; int state; int (* p_inqfilter_cmpl_cb ) (void**) ;void* inqfilt_active; int (* p_remname_cmpl_cb ) (TYPE_1__*) ;int remname_bda; void* remname_active; int rmt_name_timer_ent; int (* p_inq_cmpl_cb ) (scalar_t__*) ;int inq_timer_ent; } ;
typedef TYPE_2__ tBTM_INQUIRY_VAR_ST ;
typedef scalar_t__ UINT8 ;
struct TYPE_7__ {TYPE_2__ btm_inq_vars; } ;


 int BD_ADDR_LEN ;
 int BTM_BLE_NON_CONNECTABLE ;
 int BTM_BLE_NON_DISCOVERABLE ;
 void* BTM_DEV_RESET ;
 scalar_t__ BTM_GENERAL_INQUIRY_ACTIVE ;
 scalar_t__ BTM_INQUIRY_INACTIVE ;
 int BTM_INQ_INACTIVE_STATE ;
 scalar_t__ BTM_LIMITED_INQUIRY_ACTIVE ;
 int BTM_NON_CONNECTABLE ;
 int BTM_NON_DISCOVERABLE ;
 void* BTM_SCAN_TYPE_STANDARD ;
 void* FALSE ;
 TYPE_4__ btm_cb ;
 int btm_clr_inq_db (int *) ;
 int btm_clr_inq_result_flt () ;
 int btu_stop_timer (int *) ;
 int memset (int ,int ,int ) ;
 int stub1 (scalar_t__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (void**) ;

void btm_inq_db_reset (void)
{
    tBTM_REMOTE_DEV_NAME rem_name;
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;
    UINT8 num_responses;
    UINT8 temp_inq_active;
    tBTM_STATUS status;

    btu_stop_timer (&p_inq->inq_timer_ent);


    if (p_inq->inq_active != BTM_INQUIRY_INACTIVE) {
        temp_inq_active = p_inq->inq_active;

        p_inq->inq_active = BTM_INQUIRY_INACTIVE;


        if (temp_inq_active == BTM_LIMITED_INQUIRY_ACTIVE ||
                temp_inq_active == BTM_GENERAL_INQUIRY_ACTIVE) {
            if (p_inq->p_inq_cmpl_cb) {
                num_responses = 0;
                (*p_inq->p_inq_cmpl_cb)(&num_responses);
            }
        }
    }


    if (p_inq->remname_active ) {
        btu_stop_timer (&p_inq->rmt_name_timer_ent);
        p_inq->remname_active = FALSE;
        memset(p_inq->remname_bda, 0, BD_ADDR_LEN);

        if (p_inq->p_remname_cmpl_cb) {
            rem_name.status = BTM_DEV_RESET;

            (*p_inq->p_remname_cmpl_cb)(&rem_name);
            p_inq->p_remname_cmpl_cb = ((void*)0);
        }
    }


    if (p_inq->inqfilt_active) {
        p_inq->inqfilt_active = FALSE;

        if (p_inq->p_inqfilter_cmpl_cb) {
            status = BTM_DEV_RESET;
            (*p_inq->p_inqfilter_cmpl_cb)(&status);
        }
    }

    p_inq->state = BTM_INQ_INACTIVE_STATE;
    p_inq->pending_filt_complete_event = 0;
    p_inq->p_inq_results_cb = ((void*)0);
    btm_clr_inq_db(((void*)0));
    btm_clr_inq_result_flt();

    p_inq->discoverable_mode = BTM_NON_DISCOVERABLE;
    p_inq->connectable_mode = BTM_NON_CONNECTABLE;
    p_inq->page_scan_type = BTM_SCAN_TYPE_STANDARD;
    p_inq->inq_scan_type = BTM_SCAN_TYPE_STANDARD;


    p_inq->discoverable_mode |= BTM_BLE_NON_DISCOVERABLE;
    p_inq->connectable_mode |= BTM_BLE_NON_CONNECTABLE;

    return;
}
