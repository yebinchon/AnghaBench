
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int reg_services; int peer_addr; int hsp_version; int svc_conn; scalar_t__ role; void* sco_codec; void* peer_codecs; scalar_t__ peer_features; scalar_t__ conn_service; scalar_t__ conn_handle; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 void* BTA_AG_CODEC_NONE ;
 int BTA_AG_FAIL_RFCOMM ;
 int FALSE ;
 int HSP_VERSION_1_2 ;
 int UNUSED (int *) ;
 int bd_addr_null ;
 int bdcpy (int ,int ) ;
 int bta_ag_cback_open (TYPE_1__*,int *,int ) ;
 int bta_ag_start_servers (TYPE_1__*,int ) ;

void bta_ag_rfc_fail(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);

    p_scb->conn_handle = 0;
    p_scb->conn_service = 0;
    p_scb->peer_features = 0;

    p_scb->peer_codecs = BTA_AG_CODEC_NONE;
    p_scb->sco_codec = BTA_AG_CODEC_NONE;

    p_scb->role = 0;
    p_scb->svc_conn = FALSE;
    p_scb->hsp_version = HSP_VERSION_1_2;

    bdcpy(p_scb->peer_addr, bd_addr_null);

    bta_ag_start_servers(p_scb, p_scb->reg_services);

    bta_ag_cback_open(p_scb, ((void*)0), BTA_AG_FAIL_RFCOMM);
}
