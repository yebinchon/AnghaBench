
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
struct TYPE_9__ {int client_if; } ;
struct TYPE_12__ {TYPE_1__ api_get_addr; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CB ;
struct TYPE_10__ {int num_addr; int * bda_list; int status; int client_if; } ;
struct TYPE_13__ {TYPE_2__ get_addr_list; int member_0; } ;
typedef TYPE_5__ tBTA_GATTC ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BTA_GATTC_GET_ADDR_LIST_EVT ;
 int BTA_GATT_ERROR ;
 int BTA_GATT_NOT_FOUND ;
 int BTA_GATT_OK ;
 TYPE_3__* bta_gattc_cl_get_regcb (int ) ;
 int bta_gattc_co_get_addr_list (int *) ;
 int bta_gattc_co_get_addr_num () ;
 int osi_free (void*) ;
 scalar_t__ osi_malloc (int) ;
 int stub1 (int ,TYPE_5__*) ;

void bta_gattc_process_api_cache_get_addr_list(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC gattc_cb = {0};
    tBTA_GATTC_RCB *p_clrcb = bta_gattc_cl_get_regcb(p_msg->api_get_addr.client_if);
    UINT8 num_addr = bta_gattc_co_get_addr_num();
    gattc_cb.get_addr_list.client_if = p_msg->api_get_addr.client_if;

    if (num_addr != 0) {
        gattc_cb.get_addr_list.num_addr = num_addr;
        gattc_cb.get_addr_list.bda_list = (BD_ADDR *)osi_malloc(sizeof(BD_ADDR)*num_addr);
        if (gattc_cb.get_addr_list.bda_list != ((void*)0)) {
            bta_gattc_co_get_addr_list(gattc_cb.get_addr_list.bda_list);
            gattc_cb.get_addr_list.status = BTA_GATT_OK;
        } else {
            gattc_cb.get_addr_list.status = BTA_GATT_ERROR;
        }
    } else {
        gattc_cb.get_addr_list.status = BTA_GATT_NOT_FOUND;
    }

    if (p_clrcb != ((void*)0)) {
        (* p_clrcb->p_cback)(BTA_GATTC_GET_ADDR_LIST_EVT, &gattc_cb);
    }


    if (gattc_cb.get_addr_list.bda_list != ((void*)0)) {
        osi_free((void *)gattc_cb.get_addr_list.bda_list);
    }

}
