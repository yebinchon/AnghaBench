
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTA_GATT_STATUS ;
typedef int tBTA_GATTC_DATA ;
struct TYPE_5__ {int bta_conn_id; int * p_q_cmd; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;


 scalar_t__ GATTC_ConfigureMTU (int ) ;
 int GATTC_OPTYPE_CONFIG ;
 scalar_t__ GATT_CMD_STARTED ;
 scalar_t__ GATT_SUCCESS ;
 int bta_gattc_cmpl_sendmsg (int ,int ,scalar_t__,int *) ;
 scalar_t__ bta_gattc_enqueue (TYPE_1__*,int *) ;
 int bta_gattc_pop_command_to_send (TYPE_1__*) ;

void bta_gattc_cfg_mtu(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATT_STATUS status;

    if (bta_gattc_enqueue(p_clcb, p_data)) {
        status = GATTC_ConfigureMTU (p_clcb->bta_conn_id);


        if (status != GATT_SUCCESS && status != GATT_CMD_STARTED) {

            if (p_clcb->p_q_cmd == p_data) {
                p_clcb->p_q_cmd = ((void*)0);
                bta_gattc_pop_command_to_send(p_clcb);
            }

            bta_gattc_cmpl_sendmsg(p_clcb->bta_conn_id, GATTC_OPTYPE_CONFIG, status, ((void*)0));
        }
    }
}
