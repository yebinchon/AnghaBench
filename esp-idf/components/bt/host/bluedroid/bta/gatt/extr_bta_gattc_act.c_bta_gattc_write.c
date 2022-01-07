
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int value; int auth_req; int len; int offset; int handle; int conn_id; } ;
typedef TYPE_2__ tGATT_VALUE ;
typedef scalar_t__ tBTA_GATT_STATUS ;
struct TYPE_11__ {int write_type; int len; int p_value; int auth_req; int offset; int handle; } ;
struct TYPE_13__ {TYPE_1__ api_write; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_14__ {int bta_conn_id; TYPE_3__* p_q_cmd; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;


 scalar_t__ BTA_GATT_OK ;
 int GATTC_OPTYPE_WRITE ;
 scalar_t__ GATTC_Write (int ,int ,TYPE_2__*) ;
 int bta_gattc_cmpl_sendmsg (int ,int ,scalar_t__,int *) ;
 int bta_gattc_enqueue (TYPE_4__*,TYPE_3__*) ;
 int bta_gattc_pop_command_to_send (TYPE_4__*) ;
 int memcpy (int ,int ,int ) ;

void bta_gattc_write(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    if (!bta_gattc_enqueue(p_clcb, p_data)) {
        return;
    }

    tBTA_GATT_STATUS status = BTA_GATT_OK;
    tGATT_VALUE attr;

    attr.conn_id = p_clcb->bta_conn_id;
    attr.handle = p_data->api_write.handle;
    attr.offset = p_data->api_write.offset;
    attr.len = p_data->api_write.len;
    attr.auth_req = p_data->api_write.auth_req;

    if (p_data->api_write.p_value) {
        memcpy(attr.value, p_data->api_write.p_value, p_data->api_write.len);
    }

    status = GATTC_Write(p_clcb->bta_conn_id, p_data->api_write.write_type, &attr);


    if (status != BTA_GATT_OK) {

        if (p_clcb->p_q_cmd == p_data) {
            p_clcb->p_q_cmd = ((void*)0);
            bta_gattc_pop_command_to_send(p_clcb);
        }

        bta_gattc_cmpl_sendmsg(p_clcb->bta_conn_id, GATTC_OPTYPE_WRITE, status, ((void*)0));
    }
}
