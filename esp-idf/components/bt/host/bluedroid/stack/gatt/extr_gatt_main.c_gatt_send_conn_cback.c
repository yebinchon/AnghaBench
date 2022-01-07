
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ att_lcid; int transport; int peer_bda; int tcb_idx; } ;
typedef TYPE_2__ tGATT_TCB ;
struct TYPE_8__ {int (* p_conn_cb ) (int ,int ,int ,int ,int ,int ) ;} ;
struct TYPE_10__ {int gatt_if; TYPE_1__ app_cb; scalar_t__ in_use; } ;
typedef TYPE_3__ tGATT_REG ;
typedef int tGATT_BG_CONN_DEV ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_11__ {TYPE_3__* cl_rcb; } ;


 int GATT_CREATE_CONN_ID (int ,int ) ;
 int GATT_LINK_NO_IDLE_TIMEOUT ;
 scalar_t__ GATT_MAX_APPS ;
 int GATT_SetIdleTimeout (int ,int ,int ) ;
 scalar_t__ L2CAP_ATT_CID ;
 int TRUE ;
 TYPE_7__ gatt_cb ;
 int * gatt_find_bg_dev (int ) ;
 scalar_t__ gatt_is_bg_dev_for_app (int *,int ) ;
 scalar_t__ gatt_num_apps_hold_link (TYPE_2__*) ;
 int gatt_update_app_use_link_flag (int ,TYPE_2__*,int ,int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void gatt_send_conn_cback(tGATT_TCB *p_tcb)
{
    UINT8 i;
    tGATT_REG *p_reg;
    tGATT_BG_CONN_DEV *p_bg_dev = ((void*)0);
    UINT16 conn_id;

    p_bg_dev = gatt_find_bg_dev(p_tcb->peer_bda);


    for (i = 0, p_reg = gatt_cb.cl_rcb ; i < GATT_MAX_APPS; i++, p_reg++) {
        if (p_reg->in_use) {
            if (p_bg_dev && gatt_is_bg_dev_for_app(p_bg_dev, p_reg->gatt_if)) {
                gatt_update_app_use_link_flag(p_reg->gatt_if, p_tcb, TRUE, TRUE);
            }

            if (p_reg->app_cb.p_conn_cb) {
                conn_id = GATT_CREATE_CONN_ID(p_tcb->tcb_idx, p_reg->gatt_if);
                (*p_reg->app_cb.p_conn_cb)(p_reg->gatt_if, p_tcb->peer_bda, conn_id,
                                           TRUE, 0, p_tcb->transport);
            }
        }
    }


    if (gatt_num_apps_hold_link(p_tcb) && p_tcb->att_lcid == L2CAP_ATT_CID ) {

        GATT_SetIdleTimeout(p_tcb->peer_bda, GATT_LINK_NO_IDLE_TIMEOUT, p_tcb->transport);
    }
}
