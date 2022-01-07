
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {scalar_t__ deregister; int peer_addr; scalar_t__ conn_handle; int negotiated_codec; scalar_t__ send_at_reply; scalar_t__ svc_conn; int role; scalar_t__ chld_features; scalar_t__ peer_features; } ;
struct TYPE_4__ {TYPE_1__ scb; int (* p_cback ) (int ,int *) ;} ;


 int BTA_HF_CLIENT_ACP ;
 int BTA_HF_CLIENT_CLOSE_EVT ;
 int BTA_ID_HS ;
 int BTM_SCO_CODEC_CVSD ;
 scalar_t__ FALSE ;
 int UNUSED (int *) ;
 int bd_addr_null ;
 int bdcpy (int ,int ) ;
 int bta_hf_client_at_reset () ;
 TYPE_2__ bta_hf_client_cb ;
 int bta_hf_client_close_server () ;
 int bta_hf_client_scb_disable () ;
 int bta_hf_client_sco_shutdown (int *) ;
 int bta_hf_client_start_server () ;
 int bta_sys_conn_close (int ,int,int ) ;
 int bta_sys_sco_unuse (int ,int,int ) ;
 int stub1 (int ,int *) ;

void bta_hf_client_rfc_close(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);


    bta_hf_client_cb.scb.peer_features = 0;
    bta_hf_client_cb.scb.chld_features = 0;
    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_ACP;
    bta_hf_client_cb.scb.svc_conn = FALSE;
    bta_hf_client_cb.scb.send_at_reply = FALSE;
    bta_hf_client_cb.scb.negotiated_codec = BTM_SCO_CODEC_CVSD;

    bta_hf_client_at_reset();

    bta_sys_conn_close(BTA_ID_HS, 1, bta_hf_client_cb.scb.peer_addr);


    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_CLOSE_EVT, ((void*)0));


    if (bta_hf_client_cb.scb.deregister == FALSE) {

        bdcpy(bta_hf_client_cb.scb.peer_addr, bd_addr_null);


        bta_hf_client_start_server();

        bta_hf_client_cb.scb.conn_handle = 0;


        bta_hf_client_sco_shutdown(((void*)0));

        bta_sys_sco_unuse(BTA_ID_HS, 1, bta_hf_client_cb.scb.peer_addr);
    }

    else {
        bta_hf_client_close_server();
        bta_hf_client_scb_disable();
    }
}
