
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int (* p_cback ) (int ,TYPE_5__*) ;} ;
typedef TYPE_3__ tBTA_GATTC_RCB ;
struct TYPE_10__ {int start; int client_if; } ;
struct TYPE_12__ {TYPE_2__ api_listen; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CB ;
struct TYPE_9__ {int status; int client_if; } ;
struct TYPE_13__ {TYPE_1__ reg_oper; } ;
typedef TYPE_5__ tBTA_GATTC ;


 int BTA_GATTC_LISTEN_EVT ;
 int BTM_BleBroadcast (int ,int *) ;
 int UNUSED (int *) ;
 TYPE_3__* bta_gattc_cl_get_regcb (int ) ;
 int stub1 (int ,TYPE_5__*) ;

void bta_gattc_broadcast(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC_RCB *p_clreg = bta_gattc_cl_get_regcb(p_msg->api_listen.client_if);
    tBTA_GATTC cb_data;
    UNUSED(p_cb);

    cb_data.reg_oper.client_if = p_msg->api_listen.client_if;
    cb_data.reg_oper.status = BTM_BleBroadcast(p_msg->api_listen.start, ((void*)0));

    if (p_clreg && p_clreg->p_cback) {
        (*p_clreg->p_cback)(BTA_GATTC_LISTEN_EVT, &cb_data);
    }
}
