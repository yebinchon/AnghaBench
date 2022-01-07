
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int status; } ;
typedef TYPE_3__ tBTA_GATTC_OP_CMPL ;
struct TYPE_14__ {TYPE_2__* p_rcb; int bta_conn_id; int status; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;
struct TYPE_11__ {int status; int conn_id; } ;
struct TYPE_15__ {TYPE_1__ exec_cmpl; } ;
typedef TYPE_5__ tBTA_GATTC ;
struct TYPE_12__ {int (* p_cback ) (int ,TYPE_5__*) ;} ;


 int BTA_GATTC_EXEC_EVT ;
 int BTA_GATT_OK ;
 int bta_gattc_free_command_data (TYPE_4__*) ;
 int bta_gattc_pop_command_to_send (TYPE_4__*) ;
 int stub1 (int ,TYPE_5__*) ;

void bta_gattc_exec_cmpl(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_OP_CMPL *p_data)
{
    tBTA_GATTC cb_data;

    bta_gattc_free_command_data(p_clcb);
    bta_gattc_pop_command_to_send(p_clcb);
    p_clcb->status = BTA_GATT_OK;


    cb_data.exec_cmpl.conn_id = p_clcb->bta_conn_id;
    cb_data.exec_cmpl.status = p_data->status;

    ( *p_clcb->p_rcb->p_cback)(BTA_GATTC_EXEC_EVT, &cb_data);

}
