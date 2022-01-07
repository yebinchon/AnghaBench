
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_7__ {int chld_feat; int peer_feat; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_CONN ;
typedef int evt ;
struct TYPE_6__ {int chld_features; int peer_features; scalar_t__ svc_conn; } ;
struct TYPE_8__ {int (* p_cback ) (int ,TYPE_2__*) ;TYPE_1__ scb; } ;


 int BTA_HF_CLIENT_CONN_EVT ;
 scalar_t__ TRUE ;
 int UNUSED (int *) ;
 TYPE_5__ bta_hf_client_cb ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int ,TYPE_2__*) ;

void bta_hf_client_svc_conn_open(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_HF_CLIENT_CONN evt;
    UNUSED(p_data);

    memset(&evt, 0, sizeof(evt));

    if (!bta_hf_client_cb.scb.svc_conn) {

        bta_hf_client_cb.scb.svc_conn = TRUE;


        evt.peer_feat = bta_hf_client_cb.scb.peer_features;
        evt.chld_feat = bta_hf_client_cb.scb.chld_features;

        (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_CONN_EVT, &evt);
    }
}
