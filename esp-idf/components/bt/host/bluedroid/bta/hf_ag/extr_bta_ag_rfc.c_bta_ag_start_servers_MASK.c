#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int tBTA_SERVICE_MASK ;
struct TYPE_8__ {int /*<<< orphan*/ * serv_handle; int /*<<< orphan*/  serv_sec_mask; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_9__ {TYPE_1__* profile; } ;
struct TYPE_7__ {int /*<<< orphan*/  scn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BTA_AG_MTU ; 
 int BTA_AG_NUM_IDX ; 
 int BTA_HSP_SERVICE_ID ; 
 int /*<<< orphan*/  BTM_SEC_PROTO_RFCOMM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_PSM_RFCOMM ; 
 int /*<<< orphan*/  FALSE ; 
 int PORT_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bd_addr_any ; 
 TYPE_6__ bta_ag_cb ; 
 int /*<<< orphan*/ * bta_ag_mgmt_cback_tbl ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * bta_ag_sec_id ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bta_ag_uuid ; 

void FUNC5(tBTA_AG_SCB *p_scb, tBTA_SERVICE_MASK services)
{
    int bta_ag_port_status;

    services >>= BTA_HSP_SERVICE_ID;
    for (int i = 0; i < BTA_AG_NUM_IDX && services != 0; i++, services >>= 1) {
        /* if service is set in mask */
        if (services & 1) {
            FUNC1(FALSE, "", bta_ag_sec_id[i], p_scb->serv_sec_mask,
                BT_PSM_RFCOMM, BTM_SEC_PROTO_RFCOMM, bta_ag_cb.profile[i].scn);

            bta_ag_port_status =  FUNC2(bta_ag_uuid[i], bta_ag_cb.profile[i].scn,
                TRUE, BTA_AG_MTU, (UINT8 *) bd_addr_any, &(p_scb->serv_handle[i]),
                bta_ag_mgmt_cback_tbl[FUNC3(p_scb) - 1]);

            if( bta_ag_port_status  == PORT_SUCCESS ) {
                FUNC4(p_scb, p_scb->serv_handle[i]);
            } else {
                /* TODO: CR#137125 to handle to error properly */
                FUNC0("bta_ag_start_servers: RFCOMM_CreateConnection returned error:%d", bta_ag_port_status);
            }
        }
    }
}