
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* tBTM_RAND_ENC_CB ) (TYPE_1__*) ;
struct TYPE_6__ {scalar_t__ status; int param_len; scalar_t__ opcode; int * param_buf; } ;
typedef TYPE_1__ tBTM_RAND_ENC ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_OCTET16_LEN ;
 int BT_OCTET8_LEN ;
 scalar_t__ HCI_BLE_RAND ;
 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_UINT8 (scalar_t__,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*) ;

void btm_ble_rand_enc_complete (UINT8 *p, UINT16 op_code, tBTM_RAND_ENC_CB *p_enc_cplt_cback)
{
    tBTM_RAND_ENC params;
    UINT8 *p_dest = params.param_buf;

    BTM_TRACE_DEBUG ("btm_ble_rand_enc_complete");

    memset(&params, 0, sizeof(tBTM_RAND_ENC));


    if (p_enc_cplt_cback && p) {

        STREAM_TO_UINT8(params.status, p);

        if (params.status == HCI_SUCCESS) {
            params.opcode = op_code;

            if (op_code == HCI_BLE_RAND) {
                params.param_len = BT_OCTET8_LEN;
            } else {
                params.param_len = BT_OCTET16_LEN;
            }

            memcpy(p_dest, p, params.param_len);
        }
        if (p_enc_cplt_cback) {
            (*p_enc_cplt_cback)(&params);
        }
    }
}
