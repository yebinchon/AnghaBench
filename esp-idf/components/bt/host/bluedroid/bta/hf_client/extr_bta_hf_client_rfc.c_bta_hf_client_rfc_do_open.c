
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int conn_handle; int peer_addr; int peer_scn; int cli_sec_mask; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int BTA_HF_CLIENT_MTU ;
 int BTA_HF_CLIENT_RFC_CLOSE_EVT ;
 int BTM_SEC_PROTO_RFCOMM ;
 int BTM_SEC_SERVICE_HF_HANDSFREE ;
 int BTM_SetSecurityLevel (int ,char*,int ,int ,int ,int ,int ) ;
 int BT_PSM_RFCOMM ;
 int FALSE ;
 scalar_t__ PORT_SUCCESS ;
 scalar_t__ RFCOMM_CreateConnection (int ,int ,int ,int ,int ,int *,int ) ;
 int TRUE ;
 int UUID_SERVCLASS_HF_HANDSFREE ;
 TYPE_2__ bta_hf_client_cb ;
 int bta_hf_client_mgmt_cback ;
 int bta_hf_client_setup_port (int ) ;
 int bta_hf_client_sm_execute (int ,int *) ;

void bta_hf_client_rfc_do_open(tBTA_HF_CLIENT_DATA *p_data)
{
    BTM_SetSecurityLevel(TRUE, "", BTM_SEC_SERVICE_HF_HANDSFREE,
                         bta_hf_client_cb.scb.cli_sec_mask, BT_PSM_RFCOMM,
                         BTM_SEC_PROTO_RFCOMM, bta_hf_client_cb.scb.peer_scn);

    if (RFCOMM_CreateConnection(UUID_SERVCLASS_HF_HANDSFREE, bta_hf_client_cb.scb.peer_scn,
                                FALSE, BTA_HF_CLIENT_MTU, bta_hf_client_cb.scb.peer_addr, &(bta_hf_client_cb.scb.conn_handle),
                                bta_hf_client_mgmt_cback) == PORT_SUCCESS) {
        bta_hf_client_setup_port(bta_hf_client_cb.scb.conn_handle);
        APPL_TRACE_DEBUG("bta_hf_client_rfc_do_open : conn_handle = %d", bta_hf_client_cb.scb.conn_handle);
    }

    else {
        bta_hf_client_sm_execute(BTA_HF_CLIENT_RFC_CLOSE_EVT, p_data);
    }
}
