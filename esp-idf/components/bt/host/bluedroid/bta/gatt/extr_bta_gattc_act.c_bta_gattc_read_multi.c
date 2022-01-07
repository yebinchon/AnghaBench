
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int num_handles; int handles; int auth_req; } ;
struct TYPE_15__ {TYPE_1__ read_multiple; } ;
typedef TYPE_3__ tGATT_READ_PARAM ;
typedef scalar_t__ tBTA_GATT_STATUS ;
struct TYPE_14__ {int num_attr; int handles; int auth_req; } ;
struct TYPE_16__ {TYPE_2__ api_read_multi; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_17__ {int bta_conn_id; TYPE_4__* p_q_cmd; } ;
typedef TYPE_5__ tBTA_GATTC_CLCB ;
typedef int UINT16 ;


 scalar_t__ BTA_GATT_OK ;
 int GATTC_OPTYPE_READ ;
 scalar_t__ GATTC_Read (int ,int ,TYPE_3__*) ;
 int GATT_READ_MULTIPLE ;
 int bta_gattc_cmpl_sendmsg (int ,int ,scalar_t__,int *) ;
 scalar_t__ bta_gattc_enqueue (TYPE_5__*,TYPE_4__*) ;
 int bta_gattc_pop_command_to_send (TYPE_5__*) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

void bta_gattc_read_multi(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATT_STATUS status = BTA_GATT_OK;
    tGATT_READ_PARAM read_param;

    if (bta_gattc_enqueue(p_clcb, p_data)) {
        memset(&read_param, 0, sizeof(tGATT_READ_PARAM));

        if (status == BTA_GATT_OK) {
            read_param.read_multiple.num_handles = p_data->api_read_multi.num_attr;
            read_param.read_multiple.auth_req = p_data->api_read_multi.auth_req;
            memcpy(&read_param.read_multiple.handles, p_data->api_read_multi.handles,
                                        sizeof(UINT16) * p_data->api_read_multi.num_attr);

            status = GATTC_Read(p_clcb->bta_conn_id, GATT_READ_MULTIPLE, &read_param);
        }


        if (status != BTA_GATT_OK) {

            if (p_clcb->p_q_cmd == p_data) {
                p_clcb->p_q_cmd = ((void*)0);
                bta_gattc_pop_command_to_send(p_clcb);
            }

            bta_gattc_cmpl_sendmsg(p_clcb->bta_conn_id, GATTC_OPTYPE_READ, status, ((void*)0));
        }
    }
}
