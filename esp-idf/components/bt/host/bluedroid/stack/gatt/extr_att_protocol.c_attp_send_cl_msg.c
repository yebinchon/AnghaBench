
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int payload_size; } ;
typedef TYPE_5__ tGATT_TCB ;
typedef int tGATT_STATUS ;
struct TYPE_13__ {int handles; int num_handles; } ;
struct TYPE_12__ {int value; int len; int handle; int offset; } ;
struct TYPE_11__ {int handle; int offset; } ;
struct TYPE_10__ {int uuid; int e_handle; int s_handle; } ;
struct TYPE_15__ {TYPE_4__ read_multi; int find_type_value; int exec_write; TYPE_3__ attr_value; TYPE_2__ read_blob; int handle; TYPE_1__ browse; int mtu; } ;
typedef TYPE_6__ tGATT_CL_MSG ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;



 int GATT_HANDLE_IS_VALID (int ) ;

 int GATT_ILLEGAL_PARAMETER ;
 int GATT_MAX_MTU_SIZE ;
 int GATT_NO_RESOURCES ;
 int GATT_TRACE_ERROR (char*) ;
 int * attp_build_browse_cmd (int,int ,int ,int ) ;
 int * attp_build_exec_write_cmd (int,int ) ;
 int * attp_build_handle_cmd (int,int ,int ) ;
 int * attp_build_mtu_cmd (int const,int ) ;
 int * attp_build_opcode_cmd (int) ;
 int * attp_build_read_by_type_value_cmd (int ,int *) ;
 int * attp_build_read_multi_cmd (int ,int ,int ) ;
 int * attp_build_value_cmd (int ,int,int ,int ,int ,int ) ;
 int attp_cl_send_cmd (TYPE_5__*,int ,int,int *) ;

tGATT_STATUS attp_send_cl_msg (tGATT_TCB *p_tcb, UINT16 clcb_idx, UINT8 op_code, tGATT_CL_MSG *p_msg)
{
    tGATT_STATUS status = GATT_NO_RESOURCES;
    BT_HDR *p_cmd = ((void*)0);
    UINT16 offset = 0, handle;

    if (p_tcb != ((void*)0)) {
        switch (op_code) {
        case 136:
            if (p_msg->mtu <= GATT_MAX_MTU_SIZE) {
                p_tcb->payload_size = p_msg->mtu;
                p_cmd = attp_build_mtu_cmd(136, p_msg->mtu);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case 138:
        case 131:
        case 132:
            if (GATT_HANDLE_IS_VALID (p_msg->browse.s_handle) &&
                    GATT_HANDLE_IS_VALID (p_msg->browse.e_handle) &&
                    p_msg->browse.s_handle <= p_msg->browse.e_handle) {
                p_cmd = attp_build_browse_cmd(op_code,
                                              p_msg->browse.s_handle,
                                              p_msg->browse.e_handle,
                                              p_msg->browse.uuid);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case 133:
            offset = p_msg->read_blob.offset;

        case 134:
            handle = (op_code == 134) ? p_msg->handle : p_msg->read_blob.handle;

            if (GATT_HANDLE_IS_VALID (handle)) {
                p_cmd = attp_build_handle_cmd(op_code, handle, offset);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case 140:
            p_cmd = attp_build_opcode_cmd(op_code);
            break;

        case 135:
            offset = p_msg->attr_value.offset;

        case 129:
        case 141:
        case 128:
            if (GATT_HANDLE_IS_VALID (p_msg->attr_value.handle)) {
                p_cmd = attp_build_value_cmd (p_tcb->payload_size,
                                              op_code, p_msg->attr_value.handle,
                                              offset,
                                              p_msg->attr_value.len,
                                              p_msg->attr_value.value);
            } else {
                status = GATT_ILLEGAL_PARAMETER;
            }
            break;

        case 139:
            p_cmd = attp_build_exec_write_cmd(op_code, p_msg->exec_write);
            break;

        case 137:
            p_cmd = attp_build_read_by_type_value_cmd(p_tcb->payload_size, &p_msg->find_type_value);
            break;

        case 130:
            p_cmd = attp_build_read_multi_cmd(p_tcb->payload_size,
                                              p_msg->read_multi.num_handles,
                                              p_msg->read_multi.handles);
            break;

        default:
            break;
        }

        if (p_cmd != ((void*)0)) {
            status = attp_cl_send_cmd(p_tcb, clcb_idx, op_code, p_cmd);
        }

    } else {
        GATT_TRACE_ERROR("Peer device not connected");
    }

    return status;
}
