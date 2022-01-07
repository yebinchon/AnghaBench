
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ payload_size; } ;
typedef TYPE_1__ tGATT_TCB ;
struct TYPE_25__ {int status; scalar_t__ retry_count; int rsp_timer_ent; } ;
typedef TYPE_2__ tGATT_CLCB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;


 int GATT_ERROR ;
 int GATT_TRACE_ERROR (char*,scalar_t__,...) ;
 int GATT_TRACE_WARNING (char*,scalar_t__,scalar_t__) ;
 int btu_stop_timer (int *) ;
 int gatt_cl_send_next_cmd_inq (TYPE_1__*) ;
 TYPE_2__* gatt_cmd_dequeue (TYPE_1__*,scalar_t__*) ;
 scalar_t__ gatt_cmd_to_rsp_code (scalar_t__) ;
 int gatt_end_operation (TYPE_2__*,int ,int *) ;
 int gatt_process_error_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*) ;
 int gatt_process_find_type_value_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__*) ;
 int gatt_process_handle_rsp (TYPE_2__*) ;
 int gatt_process_mtu_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__*) ;
 int gatt_process_notification (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*) ;
 int gatt_process_prep_write_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*) ;
 int gatt_process_read_by_type_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*) ;
 int gatt_process_read_info_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*) ;
 int gatt_process_read_rsp (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*) ;

void gatt_client_handle_server_rsp (tGATT_TCB *p_tcb, UINT8 op_code,
                                    UINT16 len, UINT8 *p_data)
{
    tGATT_CLCB *p_clcb = ((void*)0);
    UINT8 rsp_code;

    if (op_code != 141 && op_code != 140) {
        p_clcb = gatt_cmd_dequeue(p_tcb, &rsp_code);

        rsp_code = gatt_cmd_to_rsp_code(rsp_code);

        if (p_clcb == ((void*)0) || (rsp_code != op_code && op_code != 139)) {
            GATT_TRACE_WARNING ("ATT - Ignore wrong response. Receives (%02x)                                 Request(%02x) Ignored", op_code, rsp_code);


            return;
        } else {
            btu_stop_timer (&p_clcb->rsp_timer_ent);
            p_clcb->retry_count = 0;
        }
    }


    if (len >= p_tcb->payload_size) {
        GATT_TRACE_ERROR("invalid response/indicate pkt size: %d, PDU size: %d", len + 1, p_tcb->payload_size);
        if (op_code != 140 &&
                op_code != 141) {
            gatt_end_operation(p_clcb, GATT_ERROR, ((void*)0));
        }
    } else {
        switch (op_code) {
        case 139:
            gatt_process_error_rsp(p_tcb, p_clcb, op_code, len, p_data);
            break;

        case 135:
            gatt_process_mtu_rsp(p_tcb, p_clcb, len , p_data);
            break;

        case 137:
            gatt_process_read_info_rsp(p_tcb, p_clcb, op_code, len, p_data);
            break;

        case 130:
        case 131:
            gatt_process_read_by_type_rsp(p_tcb, p_clcb, op_code, len, p_data);
            break;

        case 133:
        case 132:
        case 129:
            gatt_process_read_rsp(p_tcb, p_clcb, op_code, len, p_data);
            break;

        case 136:
            gatt_process_find_type_value_rsp(p_tcb, p_clcb, len, p_data);
            break;

        case 128:
            gatt_process_handle_rsp(p_clcb);
            break;

        case 134:
            gatt_process_prep_write_rsp(p_tcb, p_clcb, op_code, len, p_data);
            break;

        case 138:
            gatt_end_operation(p_clcb, p_clcb->status, ((void*)0));
            break;

        case 140:
        case 141:
            gatt_process_notification(p_tcb, op_code, len, p_data);
            break;

        default:
            GATT_TRACE_ERROR("Unknown opcode = %d", op_code);
            break;
        }
    }

    if (op_code != 141 && op_code != 140) {
        gatt_cl_send_next_cmd_inq(p_tcb);
    }

    return;
}
