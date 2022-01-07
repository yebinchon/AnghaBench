
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* p_req_cb ) (int ,int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ app_cb; scalar_t__ in_use; } ;
typedef TYPE_2__ tGATT_REG ;
typedef int tGATT_IF ;
typedef int tGATTS_REQ_TYPE ;
typedef int tGATTS_DATA ;
typedef int UINT32 ;
typedef int UINT16 ;


 int GATT_GET_GATT_IF (int ) ;
 int GATT_TRACE_ERROR (char*) ;
 int GATT_TRACE_WARNING (char*,int ) ;
 TYPE_2__* gatt_get_regcb (int ) ;
 int stub1 (int ,int ,int ,int *) ;

void gatt_sr_send_req_callback(UINT16 conn_id,
                               UINT32 trans_id,
                               tGATTS_REQ_TYPE type, tGATTS_DATA *p_data)
{
    tGATT_IF gatt_if = GATT_GET_GATT_IF(conn_id);
    tGATT_REG *p_reg = gatt_get_regcb(gatt_if);

    if (!p_reg ) {
        GATT_TRACE_ERROR ("p_reg not found discard request");
        return;
    }

    if ( p_reg->in_use &&
            p_reg->app_cb.p_req_cb) {
        (*p_reg->app_cb.p_req_cb)(conn_id, trans_id, type, p_data);
    } else {
        GATT_TRACE_WARNING("Call back not found for application conn_id=%d", conn_id);
    }

}
