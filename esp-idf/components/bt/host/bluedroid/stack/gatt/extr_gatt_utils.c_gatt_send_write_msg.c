
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tGATT_TCB ;
struct TYPE_4__ {int value; void* offset; void* len; void* handle; } ;
struct TYPE_5__ {TYPE_1__ attr_value; } ;
typedef TYPE_2__ tGATT_CL_MSG ;
typedef int UINT8 ;
typedef void* UINT16 ;


 int attp_send_cl_msg (int *,void*,int ,TYPE_2__*) ;
 int memcpy (int ,int *,void*) ;

UINT8 gatt_send_write_msg (tGATT_TCB *p_tcb, UINT16 clcb_idx, UINT8 op_code,
                           UINT16 handle, UINT16 len,
                           UINT16 offset, UINT8 *p_data)
{
    tGATT_CL_MSG msg;

    msg.attr_value.handle = handle;
    msg.attr_value.len = len;
    msg.attr_value.offset = offset;

    memcpy (msg.attr_value.value, p_data, len);


    return attp_send_cl_msg(p_tcb, clcb_idx, op_code, &msg);
}
