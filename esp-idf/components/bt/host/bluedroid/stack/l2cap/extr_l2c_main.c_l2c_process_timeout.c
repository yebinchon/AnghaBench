
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int conn_update_mask; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int tL2C_CCB ;
typedef int UINT8 ;
struct TYPE_8__ {int event; scalar_t__ param; } ;
typedef TYPE_2__ TIMER_LIST_ENT ;
 int HCI_ERR_HOST_TIMEOUT ;
 int L2CEVT_ACK_TIMEOUT ;
 int L2CEVT_TIMEOUT ;
 int L2C_BLE_UPDATE_PARAM_FULL ;
 int L2C_BLE_UPDATE_PENDING ;
 int TRUE ;
 int l2c_csm_execute (int *,int ,int *) ;
 int l2c_info_timeout (TYPE_1__*) ;
 int l2c_link_timeout (TYPE_1__*) ;
 int l2c_process_held_packets (int ) ;
 int l2c_send_update_conn_params_cb (TYPE_1__*,int ) ;

void l2c_process_timeout (TIMER_LIST_ENT *p_tle)
{

    switch (p_tle->event) {
    case 129:
        l2c_link_timeout ((tL2C_LCB *)p_tle->param);
        break;

    case 133:
        l2c_csm_execute (((tL2C_CCB *)p_tle->param), L2CEVT_TIMEOUT, ((void*)0));
        break;

    case 132:
        l2c_csm_execute (((tL2C_CCB *)p_tle->param), L2CEVT_ACK_TIMEOUT, ((void*)0));
        break;

    case 131:

        l2c_process_held_packets(TRUE);
        break;

    case 130:
        l2c_info_timeout((tL2C_LCB *)p_tle->param);
        break;
    case 128: {

        UINT8 status = HCI_ERR_HOST_TIMEOUT;
        tL2C_LCB *p_lcb = (tL2C_LCB *)p_tle->param;
        if (p_lcb){
            p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PENDING;
            p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PARAM_FULL;
        }
        l2c_send_update_conn_params_cb(p_lcb, status);

        break;
    }
    }
}
