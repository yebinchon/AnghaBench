
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ reason; int sec_level; int is_pair_cancel; scalar_t__ auth_mode; int smp_over_br; } ;
struct TYPE_13__ {TYPE_1__ cmplt; int member_0; } ;
typedef TYPE_3__ tSMP_EVT_DATA ;
struct TYPE_14__ {scalar_t__ status; scalar_t__ role; int pairing_bda; scalar_t__ is_pair_cancel; scalar_t__ auth_mode; int sec_level; int smp_over_br; int (* p_callback ) (int ,int ,TYPE_3__*) ;} ;
typedef TYPE_4__ tSMP_CB ;
typedef int (* tSMP_CALLBACK ) (int ,int ,TYPE_3__*) ;
struct TYPE_12__ {int skip_update_conn_param; scalar_t__ auth_mode; } ;
struct TYPE_15__ {TYPE_2__ ble; } ;
typedef TYPE_6__ tBTM_SEC_DEV_REC ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 scalar_t__ HCI_ROLE_SLAVE ;
 int L2CA_EnableUpdateBleConnParams (int ,int ) ;
 int SMP_COMPLT_EVT ;
 scalar_t__ SMP_SUCCESS ;
 int SMP_TRACE_DEBUG (char*,...) ;
 int TRUE ;
 TYPE_6__* btm_find_dev (int ) ;
 int memcpy (int ,int ,int ) ;
 int smp_reset_control_value (TYPE_4__*) ;
 int stub1 (int ,int ,TYPE_3__*) ;

void smp_proc_pairing_cmpl(tSMP_CB *p_cb)
{
    tSMP_EVT_DATA evt_data = {0};
    tSMP_CALLBACK *p_callback = p_cb->p_callback;
    BD_ADDR pairing_bda;

    SMP_TRACE_DEBUG ("smp_proc_pairing_cmpl \n");

    evt_data.cmplt.reason = p_cb->status;
    evt_data.cmplt.smp_over_br = p_cb->smp_over_br;
    evt_data.cmplt.auth_mode = 0;

    tBTM_SEC_DEV_REC *p_rec = btm_find_dev (p_cb->pairing_bda);
    if (p_cb->status == SMP_SUCCESS) {
        evt_data.cmplt.sec_level = p_cb->sec_level;
        if (p_cb->auth_mode) {
            evt_data.cmplt.auth_mode = p_cb->auth_mode;
            if (p_rec) {
                p_rec->ble.auth_mode = p_cb->auth_mode;
            }
        } else if (p_rec) {
            evt_data.cmplt.auth_mode = p_rec->ble.auth_mode;
        }
    }







    evt_data.cmplt.is_pair_cancel = FALSE;

    if (p_cb->is_pair_cancel) {
        evt_data.cmplt.is_pair_cancel = TRUE;
    }


    SMP_TRACE_DEBUG ("send SMP_COMPLT_EVT reason=0x%0x sec_level=0x%0x\n",
                     evt_data.cmplt.reason,
                     evt_data.cmplt.sec_level );

    memcpy (pairing_bda, p_cb->pairing_bda, BD_ADDR_LEN);



    if (p_cb->role == HCI_ROLE_SLAVE) {
        if(p_rec && p_rec->ble.skip_update_conn_param) {

            p_rec->ble.skip_update_conn_param = 0;
        } else {
            L2CA_EnableUpdateBleConnParams(p_cb->pairing_bda, TRUE);
        }
    }




    smp_reset_control_value(p_cb);

    if (p_callback) {
        (*p_callback) (SMP_COMPLT_EVT, pairing_bda, &evt_data);
    }
}
