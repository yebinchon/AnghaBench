
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int opcode; int param_len; int * p_param_buf; } ;
typedef TYPE_1__ tBTM_VSC_CMPL ;
typedef int (* tBTM_CMPL_CB ) (TYPE_1__*) ;
struct TYPE_8__ {int (* update_exceptional_list_cmp_cb ) (int ,int ,int ,int *) ;} ;
typedef TYPE_3__ tBTM_BLE_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {TYPE_3__ ble_ctr_cb; } ;


 int BTM_TRACE_EVENT (char*) ;


 int STREAM_TO_UINT32 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 TYPE_6__ btm_cb ;
 int stub1 (int ,int ,int ,int *) ;
 int stub2 (TYPE_1__*) ;

void btm_vsc_complete (UINT8 *p, UINT16 opcode, UINT16 evt_len,
                       tBTM_CMPL_CB *p_vsc_cplt_cback)
{

    tBTM_BLE_CB *ble_cb = &btm_cb.ble_ctr_cb;
    switch(opcode) {
        case 129:
            BTM_TRACE_EVENT("Set long adv data complete\n");
            break;
        case 128: {
            uint8_t subcode, status; uint32_t length;
            STREAM_TO_UINT8(status, p);
            STREAM_TO_UINT8(subcode, p);
            STREAM_TO_UINT32(length, p);
            if(ble_cb && ble_cb->update_exceptional_list_cmp_cb) {
                (*ble_cb->update_exceptional_list_cmp_cb)(status, subcode, length, p);
            }
            break;
        }
        default:
        break;
    }
    tBTM_VSC_CMPL vcs_cplt_params;


    if (p_vsc_cplt_cback) {

        vcs_cplt_params.opcode = opcode;
        vcs_cplt_params.param_len = evt_len;
        vcs_cplt_params.p_param_buf = p;
        (*p_vsc_cplt_cback)(&vcs_cplt_params);
    }

}
