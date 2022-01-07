
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ tBTA_GATT_STATUS ;
struct TYPE_9__ {int is_execute; } ;
struct TYPE_10__ {TYPE_1__ api_exec; } ;
typedef TYPE_2__ tBTA_GATTC_DATA ;
struct TYPE_11__ {int bta_conn_id; TYPE_2__* p_q_cmd; } ;
typedef TYPE_3__ tBTA_GATTC_CLCB ;


 scalar_t__ BTA_GATT_OK ;
 scalar_t__ GATTC_ExecuteWrite (int ,int ) ;
 int GATTC_OPTYPE_EXE_WRITE ;
 int bta_gattc_cmpl_sendmsg (int ,int ,scalar_t__,int *) ;
 scalar_t__ bta_gattc_enqueue (TYPE_3__*,TYPE_2__*) ;
 int bta_gattc_pop_command_to_send (TYPE_3__*) ;

void bta_gattc_execute(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATT_STATUS status;

    if (bta_gattc_enqueue(p_clcb, p_data)) {
        status = GATTC_ExecuteWrite(p_clcb->bta_conn_id, p_data->api_exec.is_execute);

        if (status != BTA_GATT_OK) {

            if (p_clcb->p_q_cmd == p_data) {
                p_clcb->p_q_cmd = ((void*)0);
                bta_gattc_pop_command_to_send(p_clcb);
            }

            bta_gattc_cmpl_sendmsg(p_clcb->bta_conn_id, GATTC_OPTYPE_EXE_WRITE, status, ((void*)0));
        }
    }
}
