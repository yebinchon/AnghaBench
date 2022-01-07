
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int post_sco; int peer_addr; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_POST_SCO_CLOSE_RFC ;
 int BTA_AG_POST_SCO_NONE ;
 int BT_TRANSPORT_BR_EDR ;
 int L2CA_SetIdleTimeoutByBdAddr (int ,int ,int ) ;
 int bta_ag_rfc_do_close (TYPE_1__*,int *) ;
 scalar_t__ bta_ag_sco_is_open (TYPE_1__*) ;
 int bta_ag_sco_shutdown (TYPE_1__*,int *) ;
 int bta_dm_pm_active (int ) ;

void bta_ag_start_close(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{

    bta_dm_pm_active(p_scb->peer_addr);
    L2CA_SetIdleTimeoutByBdAddr(p_scb->peer_addr, 0, BT_TRANSPORT_BR_EDR);

    if (bta_ag_sco_is_open(p_scb)) {
        p_scb->post_sco = BTA_AG_POST_SCO_CLOSE_RFC;
    } else {
        p_scb->post_sco = BTA_AG_POST_SCO_NONE;
        bta_ag_rfc_do_close(p_scb, p_data);
    }

    bta_ag_sco_shutdown(p_scb, p_data);
}
