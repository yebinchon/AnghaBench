
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; int r; int c; } ;
typedef TYPE_2__ tBTM_SP_LOC_OOB ;
typedef int tBTM_SP_EVT_DATA ;
typedef scalar_t__ UINT8 ;
struct TYPE_4__ {int (* p_sp_callback ) (int ,int *) ;} ;
struct TYPE_6__ {TYPE_1__ api; } ;


 int BTM_ERR_PROCESSING ;
 int BTM_SP_LOC_OOB_EVT ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,scalar_t__) ;
 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_ARRAY16 (int ,scalar_t__*) ;
 TYPE_3__ btm_cb ;
 int stub1 (int ,int *) ;

void btm_read_local_oob_complete (UINT8 *p)
{
    tBTM_SP_LOC_OOB evt_data;
    UINT8 status = *p++;

    BTM_TRACE_EVENT ("btm_read_local_oob_complete:%d\n", status);
    if (status == HCI_SUCCESS) {
        evt_data.status = BTM_SUCCESS;
        STREAM_TO_ARRAY16(evt_data.c, p);
        STREAM_TO_ARRAY16(evt_data.r, p);
    } else {
        evt_data.status = BTM_ERR_PROCESSING;
    }

    if (btm_cb.api.p_sp_callback) {
        (*btm_cb.api.p_sp_callback) (BTM_SP_LOC_OOB_EVT, (tBTM_SP_EVT_DATA *)&evt_data);
    }
}
