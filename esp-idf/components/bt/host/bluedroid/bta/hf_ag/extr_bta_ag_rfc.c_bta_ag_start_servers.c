
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTA_SERVICE_MASK ;
struct TYPE_8__ {int * serv_handle; int serv_sec_mask; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
typedef int UINT8 ;
struct TYPE_9__ {TYPE_1__* profile; } ;
struct TYPE_7__ {int scn; } ;


 int APPL_TRACE_DEBUG (char*,int) ;
 int BTA_AG_MTU ;
 int BTA_AG_NUM_IDX ;
 int BTA_HSP_SERVICE_ID ;
 int BTM_SEC_PROTO_RFCOMM ;
 int BTM_SetSecurityLevel (int ,char*,int ,int ,int ,int ,int ) ;
 int BT_PSM_RFCOMM ;
 int FALSE ;
 int PORT_SUCCESS ;
 int RFCOMM_CreateConnection (int ,int ,int ,int ,int *,int *,int ) ;
 int TRUE ;
 scalar_t__ bd_addr_any ;
 TYPE_6__ bta_ag_cb ;
 int * bta_ag_mgmt_cback_tbl ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int * bta_ag_sec_id ;
 int bta_ag_setup_port (TYPE_2__*,int ) ;
 int * bta_ag_uuid ;

void bta_ag_start_servers(tBTA_AG_SCB *p_scb, tBTA_SERVICE_MASK services)
{
    int bta_ag_port_status;

    services >>= BTA_HSP_SERVICE_ID;
    for (int i = 0; i < BTA_AG_NUM_IDX && services != 0; i++, services >>= 1) {

        if (services & 1) {
            BTM_SetSecurityLevel(FALSE, "", bta_ag_sec_id[i], p_scb->serv_sec_mask,
                BT_PSM_RFCOMM, BTM_SEC_PROTO_RFCOMM, bta_ag_cb.profile[i].scn);

            bta_ag_port_status = RFCOMM_CreateConnection(bta_ag_uuid[i], bta_ag_cb.profile[i].scn,
                TRUE, BTA_AG_MTU, (UINT8 *) bd_addr_any, &(p_scb->serv_handle[i]),
                bta_ag_mgmt_cback_tbl[bta_ag_scb_to_idx(p_scb) - 1]);

            if( bta_ag_port_status == PORT_SUCCESS ) {
                bta_ag_setup_port(p_scb, p_scb->serv_handle[i]);
            } else {

                APPL_TRACE_DEBUG("bta_ag_start_servers: RFCOMM_CreateConnection returned error:%d", bta_ag_port_status);
            }
        }
    }
}
