
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tcb_idx; } ;
typedef TYPE_2__ tGATT_TCB ;
struct TYPE_7__ {int (* p_congestion_cb ) (int ,int ) ;} ;
struct TYPE_9__ {TYPE_1__ app_cb; int gatt_if; scalar_t__ in_use; } ;
typedef TYPE_3__ tGATT_REG ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_10__ {TYPE_3__* cl_rcb; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_CREATE_CONN_ID (int ,int ) ;
 scalar_t__ GATT_MAX_APPS ;
 TYPE_6__ gatt_cb ;
 int gatt_cl_send_next_cmd_inq (TYPE_2__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gatt_channel_congestion(tGATT_TCB *p_tcb, BOOLEAN congested)
{
    UINT8 i = 0;
    tGATT_REG *p_reg = ((void*)0);
    UINT16 conn_id;


    if (p_tcb != ((void*)0) && congested == FALSE) {
        gatt_cl_send_next_cmd_inq(p_tcb);
    }


    for (i = 0, p_reg = gatt_cb.cl_rcb ; i < GATT_MAX_APPS; i++, p_reg++) {
        if (p_reg->in_use) {
            if (p_reg->app_cb.p_congestion_cb) {
                conn_id = GATT_CREATE_CONN_ID(p_tcb->tcb_idx, p_reg->gatt_if);
                (*p_reg->app_cb.p_congestion_cb)(conn_id, congested);
            }
        }
    }
}
