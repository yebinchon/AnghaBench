
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int post_sco; int features; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_END_CALL_RES ;
 int BTA_AG_FEAT_NOSCO ;
 int BTA_AG_IN_CALL_CONN_RES ;
 int BTA_AG_IN_CALL_RES ;
 int BTA_AG_OUT_CALL_ORIG_RES ;





 void* BTA_AG_POST_SCO_NONE ;
 int BTA_AG_POST_SCO_RING ;
 int bta_ag_inband_enabled (TYPE_1__*) ;
 int bta_ag_rfc_do_close (TYPE_1__*,int *) ;
 int bta_ag_sco_open (TYPE_1__*,int *) ;
 int bta_ag_send_call_inds (TYPE_1__*,int ) ;
 int bta_ag_send_ring (TYPE_1__*,int *) ;

void bta_ag_post_sco_close(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    switch (p_scb->post_sco) {
        case 128:
            bta_ag_rfc_do_close(p_scb, p_data);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case 132:
            bta_ag_send_call_inds(p_scb, BTA_AG_IN_CALL_CONN_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case 129:
            bta_ag_send_call_inds(p_scb, BTA_AG_OUT_CALL_ORIG_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case 131:
            bta_ag_send_call_inds(p_scb, BTA_AG_END_CALL_RES);
            p_scb->post_sco = BTA_AG_POST_SCO_NONE;
            break;

        case 130:
        {
            bta_ag_send_call_inds(p_scb, BTA_AG_END_CALL_RES);

            bta_ag_send_call_inds(p_scb, BTA_AG_IN_CALL_RES);

            if (bta_ag_inband_enabled(p_scb) && !(p_scb->features & BTA_AG_FEAT_NOSCO)) {
                p_scb->post_sco = BTA_AG_POST_SCO_RING;
                bta_ag_sco_open(p_scb, p_data);
            } else {
                p_scb->post_sco = BTA_AG_POST_SCO_NONE;
                bta_ag_send_ring(p_scb, p_data);
            }
            break;
        }

        default:
            break;
    }
}
