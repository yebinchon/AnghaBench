
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t conn_service; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
struct TYPE_9__ {scalar_t__ status; } ;
struct TYPE_11__ {TYPE_1__ disc_result; } ;
typedef TYPE_3__ tBTA_AG_DATA ;


 scalar_t__ SDP_DB_FULL ;
 scalar_t__ SDP_SUCCESS ;
 int bta_ag_free_db (TYPE_2__*,TYPE_3__*) ;
 int bta_ag_sdp_find_attr (TYPE_2__*,int ) ;
 int * bta_ag_svc_mask ;

void bta_ag_disc_acp_res(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{

    if (p_data->disc_result.status == SDP_SUCCESS ||
        p_data->disc_result.status == SDP_DB_FULL) {

        bta_ag_sdp_find_attr(p_scb, bta_ag_svc_mask[p_scb->conn_service]);
    }

    bta_ag_free_db(p_scb, p_data);
}
