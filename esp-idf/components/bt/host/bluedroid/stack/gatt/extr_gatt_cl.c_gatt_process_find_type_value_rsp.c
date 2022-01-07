
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tGATT_TCB ;
struct TYPE_17__ {scalar_t__ e_handle; int service_type; } ;
struct TYPE_18__ {TYPE_5__ group_value; } ;
struct TYPE_13__ {int uuid16; } ;
struct TYPE_14__ {int len; TYPE_1__ uu; } ;
struct TYPE_19__ {scalar_t__ handle; TYPE_6__ value; TYPE_2__ type; } ;
typedef TYPE_7__ tGATT_DISC_RES ;
struct TYPE_20__ {scalar_t__ operation; scalar_t__ op_subtype; scalar_t__ s_handle; int conn_id; TYPE_4__* p_reg; int uuid; } ;
typedef TYPE_8__ tGATT_CLCB ;
typedef int tBT_UUID ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_15__ {int (* p_disc_res_cb ) (int ,scalar_t__,TYPE_7__*) ;} ;
struct TYPE_16__ {TYPE_3__ app_cb; } ;


 scalar_t__ GATTC_OPTYPE_DISCOVERY ;
 scalar_t__ GATT_DISC_SRVC_BY_UUID ;
 int GATT_TRACE_DEBUG (char*) ;
 int GATT_UUID_PRI_SERVICE ;
 int STREAM_TO_UINT16 (scalar_t__,int *) ;
 int UNUSED (int *) ;
 int gatt_act_discovery (TYPE_8__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_7__*,int ,int) ;
 int stub1 (int ,scalar_t__,TYPE_7__*) ;

void gatt_process_find_type_value_rsp (tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT16 len, UINT8 *p_data)
{
    tGATT_DISC_RES result;
    UINT8 *p = p_data;

    UNUSED(p_tcb);

    GATT_TRACE_DEBUG("gatt_process_find_type_value_rsp ");

    if (p_clcb->operation != GATTC_OPTYPE_DISCOVERY || p_clcb->op_subtype != GATT_DISC_SRVC_BY_UUID) {
        return;
    }

    memset (&result, 0, sizeof(tGATT_DISC_RES));
    result.type.len = 2;
    result.type.uu.uuid16 = GATT_UUID_PRI_SERVICE;


    while (len >= 4) {
        STREAM_TO_UINT16 (result.handle, p);
        STREAM_TO_UINT16 (result.value.group_value.e_handle, p);
        memcpy (&result.value.group_value.service_type, &p_clcb->uuid, sizeof(tBT_UUID));

        len -= 4;

        if (p_clcb->p_reg->app_cb.p_disc_res_cb) {
            (*p_clcb->p_reg->app_cb.p_disc_res_cb)(p_clcb->conn_id, p_clcb->op_subtype, &result);
        }
    }


    p_clcb->s_handle = (result.value.group_value.e_handle == 0) ? 0 : (result.value.group_value.e_handle + 1);

    gatt_act_discovery(p_clcb) ;
}
