
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {scalar_t__ sco_state; int sco_close_rfc; int peer_addr; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 scalar_t__ BTA_HF_CLIENT_SCO_OPEN_ST ;
 int BT_TRANSPORT_BR_EDR ;
 int L2CA_SetIdleTimeoutByBdAddr (int ,int ,int ) ;
 int TRUE ;
 int bta_dm_pm_active (int ) ;
 TYPE_2__ bta_hf_client_cb ;
 int bta_hf_client_rfc_do_close (int *) ;
 int bta_hf_client_sco_shutdown (int *) ;

void bta_hf_client_start_close(tBTA_HF_CLIENT_DATA *p_data)
{


    bta_dm_pm_active(bta_hf_client_cb.scb.peer_addr);

    L2CA_SetIdleTimeoutByBdAddr(bta_hf_client_cb.scb.peer_addr, 0, BT_TRANSPORT_BR_EDR);


    if (bta_hf_client_cb.scb.sco_state == BTA_HF_CLIENT_SCO_OPEN_ST) {
        bta_hf_client_cb.scb.sco_close_rfc = TRUE;
    } else {
        bta_hf_client_rfc_do_close(p_data);
    }


    bta_hf_client_sco_shutdown(((void*)0));
}
