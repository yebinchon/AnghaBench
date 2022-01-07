
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int transport; int peer_bda; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_SEC_ACTION ;
struct TYPE_13__ {TYPE_1__* p_tcb; } ;
typedef TYPE_2__ tGATT_CLCB ;
typedef int tBTM_STATUS ;
typedef int tBTM_BLE_SEC_ACT ;
typedef scalar_t__ BOOLEAN ;


 int BTM_CMD_STARTED ;
 int BTM_SUCCESS ;
 int BTM_SetEncryption (int ,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int GATT_CH_OPEN ;




 int GATT_SEC_NONE ;

 int GATT_TRACE_DEBUG (char*) ;
 int GATT_TRACE_ERROR (char*,int ) ;
 scalar_t__ TRUE ;
 int gatt_add_pending_enc_channel_clcb (TYPE_1__*,TYPE_2__*) ;
 int gatt_convert_sec_action (int,int *) ;
 int gatt_determine_sec_act (TYPE_2__*) ;
 int gatt_enc_cmpl_cback ;
 int gatt_get_sec_act (TYPE_1__*) ;
 int gatt_sec_check_complete (scalar_t__,TYPE_2__*,int) ;
 int gatt_set_ch_state (TYPE_1__*,int ) ;
 int gatt_set_sec_act (TYPE_1__*,int) ;
 int gatt_sign_data (TYPE_2__*) ;

BOOLEAN gatt_security_check_start(tGATT_CLCB *p_clcb)
{
    tGATT_TCB *p_tcb = p_clcb->p_tcb;
    tGATT_SEC_ACTION gatt_sec_act;
    tBTM_BLE_SEC_ACT btm_ble_sec_act;
    BOOLEAN status = TRUE;

    tBTM_STATUS btm_status;

    tGATT_SEC_ACTION sec_act_old = gatt_get_sec_act(p_tcb);

    gatt_sec_act = gatt_determine_sec_act(p_clcb);

    if (sec_act_old == GATT_SEC_NONE) {
        gatt_set_sec_act(p_tcb, gatt_sec_act);
    }

    switch (gatt_sec_act ) {
    case 128:

        GATT_TRACE_DEBUG("gatt_security_check_start: Do data signing");
        gatt_sign_data(p_clcb);

        break;
    case 132:
    case 130:
    case 131:
        if (sec_act_old < 132) {
            GATT_TRACE_DEBUG("gatt_security_check_start: Encrypt now or key upgreade first");
            gatt_convert_sec_action(gatt_sec_act, &btm_ble_sec_act);

            btm_status = BTM_SetEncryption(p_tcb->peer_bda, p_tcb->transport , gatt_enc_cmpl_cback, &btm_ble_sec_act);
            if ( (btm_status != BTM_SUCCESS) && (btm_status != BTM_CMD_STARTED)) {
                GATT_TRACE_ERROR("gatt_security_check_start BTM_SetEncryption failed btm_status=%d", btm_status);
                status = FALSE;
            }

        }
        if (status) {
            gatt_add_pending_enc_channel_clcb (p_tcb, p_clcb);
        }
        break;
    case 129:
        gatt_add_pending_enc_channel_clcb (p_tcb, p_clcb);

        break;
    default:
        gatt_sec_check_complete(TRUE, p_clcb, gatt_sec_act);
        break;
    }

    if (status == FALSE) {
        gatt_set_sec_act(p_tcb, GATT_SEC_NONE);
        gatt_set_ch_state(p_tcb, GATT_CH_OPEN);
    }

    return status;
}
