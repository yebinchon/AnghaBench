
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int (* p_cback ) (int ,TYPE_6__*) ;} ;
typedef TYPE_3__ tBTA_GATTC_RCB ;
struct TYPE_14__ {int assoc_addr; int src_addr; scalar_t__ is_assoc; int client_if; } ;
struct TYPE_17__ {TYPE_1__ api_assoc; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_18__ {scalar_t__ state; } ;
typedef TYPE_5__ tBTA_GATTC_CLCB ;
typedef int tBTA_GATTC_CB ;
struct TYPE_15__ {void* status; int client_if; } ;
struct TYPE_19__ {TYPE_2__ set_assoc; int member_0; } ;
typedef TYPE_6__ tBTA_GATTC ;
typedef int BOOLEAN ;


 int BTA_GATTC_ASSOC_EVT ;
 scalar_t__ BTA_GATTC_CONN_ST ;
 scalar_t__ BTA_GATTC_DISCOVER_ST ;
 void* BTA_GATT_BUSY ;
 void* BTA_GATT_ERROR ;
 void* BTA_GATT_OK ;
 int BTA_TRANSPORT_LE ;
 int FALSE ;
 int TRUE ;
 TYPE_3__* bta_gattc_cl_get_regcb (int ) ;
 int bta_gattc_co_cache_append_assoc_addr (int ,int ) ;
 int bta_gattc_co_cache_remove_assoc_addr (int ,int ) ;
 TYPE_5__* bta_gattc_find_clcb_by_cif (int ,int ,int ) ;
 int stub1 (int ,TYPE_6__*) ;
 int stub2 (int ,TYPE_6__*) ;
 int stub3 (int ,TYPE_6__*) ;
 int stub4 (int ,TYPE_6__*) ;

void bta_gattc_process_api_cache_assoc(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC gattc_cb = {0};
    gattc_cb.set_assoc.client_if = p_msg->api_assoc.client_if;
    BOOLEAN state = FALSE;
    tBTA_GATTC_CLCB *p_assoc_clcb = bta_gattc_find_clcb_by_cif(p_msg->api_assoc.client_if,
                                                             p_msg->api_assoc.assoc_addr, BTA_TRANSPORT_LE);
    tBTA_GATTC_RCB *p_clrcb = bta_gattc_cl_get_regcb(p_msg->api_assoc.client_if);
    if (p_assoc_clcb != ((void*)0)) {
        if (p_assoc_clcb->state == BTA_GATTC_CONN_ST || p_assoc_clcb->state == BTA_GATTC_DISCOVER_ST) {
            gattc_cb.set_assoc.status = BTA_GATT_BUSY;
            if (p_clrcb != ((void*)0)) {
                (*p_clrcb->p_cback)(BTA_GATTC_ASSOC_EVT, &gattc_cb);
                return;
            }
        }
    }

    if (p_msg->api_assoc.is_assoc) {
        if ((state = bta_gattc_co_cache_append_assoc_addr(p_msg->api_assoc.src_addr, p_msg->api_assoc.assoc_addr)) == TRUE) {
            gattc_cb.set_assoc.status = BTA_GATT_OK;

        } else {
            gattc_cb.set_assoc.status = BTA_GATT_ERROR;
            if (p_clrcb != ((void*)0)) {
                (*p_clrcb->p_cback)(BTA_GATTC_ASSOC_EVT, &gattc_cb);
                return;
            }
        }
    } else {
        if (( state = bta_gattc_co_cache_remove_assoc_addr(p_msg->api_assoc.src_addr, p_msg->api_assoc.assoc_addr)) == TRUE) {
            gattc_cb.set_assoc.status = BTA_GATT_OK;
        } else {
            gattc_cb.set_assoc.status = BTA_GATT_ERROR;
            if (p_clrcb != ((void*)0)) {
                (*p_clrcb->p_cback)(BTA_GATTC_ASSOC_EVT, &gattc_cb);
                return;
            }
        }
    }

    if (p_clrcb != ((void*)0)) {
        (*p_clrcb->p_cback)(BTA_GATTC_ASSOC_EVT, &gattc_cb);
    }

    return;

}
