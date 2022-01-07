
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ payload_size; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;


 int FALSE ;


 int GATT_INVALID_PDU ;
 int GATT_TRACE_ERROR (char*,scalar_t__,scalar_t__) ;
 int gatt_process_exec_write_req (TYPE_1__*,int,scalar_t__,int*) ;
 int gatt_process_read_multi_req (TYPE_1__*,int,scalar_t__,int*) ;
 int gatt_send_error_rsp (TYPE_1__*,int ,int,int ,int ) ;
 int gatt_sr_cmd_empty (TYPE_1__*) ;
 int gatts_process_attribute_req (TYPE_1__*,int,scalar_t__,int*) ;
 int gatts_process_find_info (TYPE_1__*,int,scalar_t__,int*) ;
 int gatts_process_mtu_req (TYPE_1__*,scalar_t__,int*) ;
 int gatts_process_primary_service_req (TYPE_1__*,int,scalar_t__,int*) ;
 int gatts_process_read_by_type_req (TYPE_1__*,int,scalar_t__,int*) ;
 int gatts_process_value_conf (TYPE_1__*,int) ;

void gatt_server_handle_client_req (tGATT_TCB *p_tcb, UINT8 op_code,
                                    UINT16 len, UINT8 *p_data)
{

    if (!gatt_sr_cmd_empty(p_tcb) && op_code != 140) {
        return;
    }



    if (len >= p_tcb->payload_size) {
        GATT_TRACE_ERROR("server receive invalid PDU size:%d pdu size:%d", len + 1, p_tcb->payload_size );

        if (op_code != 141 &&
                op_code != 128 &&
                op_code != 140) {
            gatt_send_error_rsp (p_tcb, GATT_INVALID_PDU, op_code, 0, FALSE);
        }

    } else {
        switch (op_code) {
        case 132:
        case 137:
            gatts_process_primary_service_req (p_tcb, op_code, len, p_data);
            break;

        case 138:
            gatts_process_find_info(p_tcb, op_code, len, p_data);
            break;

        case 131:

            gatts_process_read_by_type_req(p_tcb, op_code, len, p_data);
            break;


        case 134:
        case 133:
        case 129:
        case 141:
        case 128:
        case 135:
            gatts_process_attribute_req (p_tcb, op_code, len, p_data);
            break;

        case 140:
            gatts_process_value_conf (p_tcb, op_code);
            break;

        case 136:
            gatts_process_mtu_req (p_tcb, len, p_data);
            break;

        case 139:
            gatt_process_exec_write_req (p_tcb, op_code, len, p_data);
            break;

        case 130:
            gatt_process_read_multi_req (p_tcb, op_code, len, p_data);
            break;

        default:
            break;
        }
    }
}
