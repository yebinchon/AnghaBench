#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_GATT_STATUS ;
typedef  int /*<<< orphan*/  tBTA_GATTC_IF ;
struct TYPE_12__ {int /*<<< orphan*/  layer_specific; } ;
struct TYPE_14__ {void* already_connect; TYPE_1__ hdr; } ;
struct TYPE_13__ {scalar_t__ layer_specific; } ;
struct TYPE_15__ {TYPE_3__ int_conn; TYPE_2__ hdr; } ;
typedef  TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_16__ {TYPE_8__* p_srcb; int /*<<< orphan*/  transport; int /*<<< orphan*/  bta_conn_id; int /*<<< orphan*/  bda; scalar_t__ p_rcb; int /*<<< orphan*/  state; } ;
typedef  TYPE_5__ tBTA_GATTC_CLCB ;
struct TYPE_17__ {scalar_t__ state; scalar_t__ mtu; void* srvc_hdl_chg; int /*<<< orphan*/ * p_srvc_cache; int /*<<< orphan*/  connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  BTA_ALL_APP_ID ; 
 int /*<<< orphan*/  BTA_GATTC_DISCOVER_ST ; 
 int /*<<< orphan*/  BTA_GATTC_INT_DISCOVER_EVT ; 
 scalar_t__ BTA_GATTC_SERV_DISC ; 
 scalar_t__ BTA_GATTC_SERV_IDLE ; 
 scalar_t__ BTA_GATTC_SERV_LOAD ; 
 int /*<<< orphan*/  BTA_GATT_ALREADY_OPEN ; 
 int /*<<< orphan*/  BTA_GATT_OK ; 
 int /*<<< orphan*/  BTA_ID_GATTC ; 
 int /*<<< orphan*/  BTA_TRANSPORT_BR_EDR ; 
 void* FALSE ; 
 scalar_t__ GATT_DEF_BLE_MTU_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC_IF   gatt_if;
    FUNC0("bta_gattc_conn server cache state=%d", p_clcb->p_srcb->state);

    if (p_data != NULL) {
        FUNC0("bta_gattc_conn conn_id=%d", p_data->hdr.layer_specific);
        p_clcb->bta_conn_id  = p_data->int_conn.hdr.layer_specific;

        FUNC1(p_data->hdr.layer_specific,
                                &gatt_if, p_clcb->bda, &p_clcb->transport);
    }

    p_clcb->p_srcb->connected = TRUE;

    if (p_clcb->p_srcb->mtu == 0) {
        p_clcb->p_srcb->mtu = GATT_DEF_BLE_MTU_SIZE;
    }

    /* start database cache if needed */
    if (p_clcb->p_srcb->p_srvc_cache == NULL ||
            p_clcb->p_srcb->state != BTA_GATTC_SERV_IDLE) {
        if (p_clcb->p_srcb->state == BTA_GATTC_SERV_IDLE) {
#if (GATTC_CACHE_NVS == TRUE)
            p_clcb->p_srcb->state = BTA_GATTC_SERV_LOAD;
            if (FUNC2(p_clcb)) {
                p_clcb->p_srcb->state = BTA_GATTC_SERV_IDLE;
                FUNC4(p_clcb->p_srcb, BTA_GATT_OK);
                //register service change
                FUNC3(p_clcb->bta_conn_id, p_clcb->bda);
            } else
#endif
            { /* cache is building */
                p_clcb->p_srcb->state = BTA_GATTC_SERV_DISC;
                /* cache load failure, start discovery */
                FUNC7(p_clcb, NULL);
            }
        } else { /* cache is building */
            p_clcb->state = BTA_GATTC_DISCOVER_ST;
        }
    } else {
        /* a pending service handle change indication */
        if (p_clcb->p_srcb->srvc_hdl_chg) {
            p_clcb->p_srcb->srvc_hdl_chg = FALSE;
            /* start discovery */
            FUNC6(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, NULL);
        }
    }

    if (p_clcb->p_rcb) {
        /* there is no RM for GATT */
        if (p_clcb->transport == BTA_TRANSPORT_BR_EDR) {
            FUNC8(BTA_ID_GATTC, BTA_ALL_APP_ID, p_clcb->bda);
        }
        tBTA_GATT_STATUS status = BTA_GATT_OK;
        if (p_data && p_data->int_conn.already_connect) {
            //clear already_connect
            p_data->int_conn.already_connect = FALSE;
            status = BTA_GATT_ALREADY_OPEN;
        }
        FUNC5(p_clcb->p_rcb,
                                  status,
                                  p_clcb->bda,
                                  p_clcb->bta_conn_id,
                                  p_clcb->transport,
                                  p_clcb->p_srcb->mtu);

    }
}