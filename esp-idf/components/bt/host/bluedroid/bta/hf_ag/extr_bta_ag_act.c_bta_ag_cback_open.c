
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tBTA_AG_STATUS ;
struct TYPE_12__ {size_t conn_service; int peer_addr; int app_id; } ;
typedef TYPE_3__ tBTA_AG_SCB ;
struct TYPE_11__ {int app_id; int handle; } ;
struct TYPE_13__ {int bd_addr; int service_id; int status; TYPE_2__ hdr; } ;
typedef TYPE_4__ tBTA_AG_OPEN ;
struct TYPE_10__ {int bd_addr; } ;
struct TYPE_14__ {TYPE_1__ api_open; } ;
typedef TYPE_5__ tBTA_AG_DATA ;
typedef int tBTA_AG ;
struct TYPE_15__ {int (* p_cback ) (int ,int *) ;} ;


 int BTA_AG_OPEN_EVT ;
 int bdcpy (int ,int ) ;
 TYPE_9__ bta_ag_cb ;
 int bta_ag_scb_to_idx (TYPE_3__*) ;
 int * bta_ag_svc_id ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_ag_cback_open(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data, tBTA_AG_STATUS status)
{
    tBTA_AG_OPEN open;

    open.hdr.handle = bta_ag_scb_to_idx(p_scb);
    open.hdr.app_id = p_scb->app_id;
    open.status = status;
    open.service_id = bta_ag_svc_id[p_scb->conn_service];
    if (p_data) {

        bdcpy(open.bd_addr, p_data->api_open.bd_addr);
    } else {
        bdcpy(open.bd_addr, p_scb->peer_addr);
    }
    (*bta_ag_cb.p_cback)(BTA_AG_OPEN_EVT, (tBTA_AG *) &open);
}
