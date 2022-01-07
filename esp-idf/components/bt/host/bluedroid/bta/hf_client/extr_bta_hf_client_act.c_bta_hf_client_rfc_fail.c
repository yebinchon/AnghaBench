
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int negotiated_codec; void* send_at_reply; void* svc_conn; int role; scalar_t__ chld_features; scalar_t__ peer_features; scalar_t__ conn_handle; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int BTA_HF_CLIENT_ACP ;
 int BTA_HF_CLIENT_FAIL_RFCOMM ;
 int BTM_SCO_CODEC_CVSD ;
 void* FALSE ;
 int UNUSED (int *) ;
 int bta_hf_client_at_reset () ;
 TYPE_2__ bta_hf_client_cb ;
 int bta_hf_client_cback_open (int *,int ) ;
 int bta_hf_client_start_server () ;

void bta_hf_client_rfc_fail(tBTA_HF_CLIENT_DATA *p_data)
{
    UNUSED(p_data);


    bta_hf_client_cb.scb.conn_handle = 0;
    bta_hf_client_cb.scb.peer_features = 0;
    bta_hf_client_cb.scb.chld_features = 0;
    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_ACP;
    bta_hf_client_cb.scb.svc_conn = FALSE;
    bta_hf_client_cb.scb.send_at_reply = FALSE;
    bta_hf_client_cb.scb.negotiated_codec = BTM_SCO_CODEC_CVSD;

    bta_hf_client_at_reset();


    bta_hf_client_start_server();


    bta_hf_client_cback_open(((void*)0), BTA_HF_CLIENT_FAIL_RFCOMM);
}
