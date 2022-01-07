
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tGATT_TCB ;
struct TYPE_4__ {int uuid; void* e_handle; void* s_handle; } ;
struct TYPE_5__ {TYPE_1__ browse; } ;
typedef TYPE_2__ tGATT_CL_MSG ;
typedef int tBT_UUID ;
typedef int UINT8 ;
typedef void* UINT16 ;


 int attp_send_cl_msg (int *,void*,int ,TYPE_2__*) ;
 int memcpy (int *,int *,int) ;

UINT8 gatt_act_send_browse(tGATT_TCB *p_tcb, UINT16 index, UINT8 op, UINT16 s_handle,
                           UINT16 e_handle, tBT_UUID uuid)
{
    tGATT_CL_MSG msg;

    msg.browse.s_handle = s_handle;
    msg.browse.e_handle = e_handle;
    memcpy(&msg.browse.uuid, &uuid, sizeof(tBT_UUID));


    return attp_send_cl_msg(p_tcb, index, op, &msg);
}
